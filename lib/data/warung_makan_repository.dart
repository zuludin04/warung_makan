import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/core/utils/exception/network_exception.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/favorite_entity.dart';
import 'package:warung_makan/data/model/restaurant.dart';
import 'package:warung_makan/data/source/local/restaurant_db_provider.dart';
import 'package:warung_makan/data/source/remote/restauran_api_provider.dart';

abstract class WarungMakanRepository {
  Future<Either<NetworkException, List<Restaurant>>> loadRestaurantList();

  Future<Either<NetworkException, DetailRestaurant>> loadDetailRestaurant(
      String id);

  Future<Either<NetworkException, List<Restaurant>>> searchRestaurant(
      String query);

  Future<int> insertFavoriteRestaurant(FavoriteEntity favorite);

  Future<int> deleteFavorite(String restaurantId);

  Future<bool> checkIfRestaurantFavorite(String restaurantId);

  Future<List<Restaurant>> loadFavoriteRestaurant();
}

@LazySingleton(as: WarungMakanRepository)
class WarungMakanRepositoryImpl extends WarungMakanRepository {
  final RestaurantDbProvider _dbProvider;
  final RestaurantApiProvider _apiProvider;

  WarungMakanRepositoryImpl(this._dbProvider, this._apiProvider);

  @override
  Future<Either<NetworkException, DetailRestaurant>> loadDetailRestaurant(
      String id) async {
    try {
      var result = await _apiProvider.loadDetailRestaurant(id);
      return Right(result);
    } catch (e) {
      return Left(NetworkException.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkException, List<Restaurant>>>
      loadRestaurantList() async {
    try {
      var result = await _apiProvider.loadRestaurantList();
      return Right(result.map((e) => Restaurant.fromApi(e)).toList());
    } catch (e) {
      return Left(NetworkException.getDioException(e));
    }
  }

  @override
  Future<Either<NetworkException, List<Restaurant>>> searchRestaurant(
      String query) async {
    try {
      var result = await _apiProvider.searchRestaurant(query);
      return Right(result.map((e) => Restaurant.fromApi(e)).toList());
    } catch (e) {
      return Left(NetworkException.getDioException(e));
    }
  }

  @override
  Future<bool> checkIfRestaurantFavorite(String restaurantId) =>
      _dbProvider.checkIfRestaurantFavorite(restaurantId);

  @override
  Future<int> deleteFavorite(String restaurantId) =>
      _dbProvider.deleteFavorite(restaurantId);

  @override
  Future<int> insertFavoriteRestaurant(FavoriteEntity favorite) =>
      _dbProvider.insertFavoriteRestaurant(favorite);

  @override
  Future<List<Restaurant>> loadFavoriteRestaurant() async {
    var result = await _dbProvider.loadFavoriteRestaurant();
    var favorites = result.map((e) => Restaurant.fromDb(e)).toList();
    return favorites;
  }
}
