import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';

@lazySingleton
class RestaurantDbProvider {
  final Database _db;

  RestaurantDbProvider(this._db);

  Future<int> insertFavoriteRestaurant(FavoriteEntity favorite) async {
    int count = await _db.insert(RestaurantFavoriteTable, favorite.toMap());
    return count;
  }

  Future<int> deleteFavorite(String restaurantId) async {
    int count = await _db.delete(RestaurantFavoriteTable,
        where: 'restaurantId = ?', whereArgs: [restaurantId]);
    return count;
  }

  Future<bool> checkIfRestaurantFavorite(String restaurantId) async {
    List<Map<String, dynamic>> result = await _db.query(RestaurantFavoriteTable,
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
    List<Map<String, dynamic>> result =
        await _db.query(RestaurantFavoriteTable);
    List<FavoriteEntity> favorites =
        result.map((e) => FavoriteEntity.fromMap(e)).toList();
    return favorites;
  }
}
