import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';

class RestaurantDbProvider {
  static RestaurantDbProvider _dbProvider;
  static Database _database;

  RestaurantDbProvider._createObject();

  factory RestaurantDbProvider() {
    if (_dbProvider == null) {
      _dbProvider = RestaurantDbProvider._createObject();
    }
    return _dbProvider;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initDb();
    }
    return _database;
  }

  Future<Database> _initDb() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'warung_makan.db';
    var appDatabase = openDatabase(path, version: 1, onCreate: _onCreateDb);
    return appDatabase;
  }

  void _onCreateDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $RestaurantFavoriteTable (id INTEGER PRIMARY KEY AUTOINCREMENT, '
        'restaurantId TEXT, '
        'name TEXT, '
        'image TEXT, '
        'city TEXT, '
        'rating TEXT)');
  }

  Future<int> insertFavoriteRestaurant(FavoriteEntity favorite) async {
    final Database db = await database;
    int count = await db.insert(RestaurantFavoriteTable, favorite.toMap());
    return count;
  }

  Future<int> deleteFavorite(String restaurantId) async {
    final Database db = await database;
    int count = await db.delete(RestaurantFavoriteTable,
        where: 'restaurantId = ?', whereArgs: [restaurantId]);
    return count;
  }

  Future<bool> checkIfRestaurantFavorite(String restaurantId) async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(RestaurantFavoriteTable,
        where: 'restaurantId = ?', whereArgs: [restaurantId]);
    List<FavoriteEntity> favorites =
        result.map((e) => FavoriteEntity.fromMap(e)).toList();
    if (favorites.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Future<List<FavoriteEntity>> loadFavoriteRestaurant() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(RestaurantFavoriteTable);
    List<FavoriteEntity> favorites =
        result.map((e) => FavoriteEntity.fromMap(e)).toList();
    return favorites;
  }
}
