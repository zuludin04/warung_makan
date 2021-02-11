import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:warung_makan/core/utils/constants.dart';

@module
abstract class DatabaseModule {
  @preResolve
  Future<Database> get database => _initDb();

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
}
