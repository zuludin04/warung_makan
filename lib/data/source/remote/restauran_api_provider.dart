import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant_response.dart';

@lazySingleton
class RestaurantApiProvider {
  final Dio _dio;

  RestaurantApiProvider(this._dio);

  Future<List<Restaurants>> loadRestaurantList() async {
    try {
      Response response = await _dio.get('list');
      RestaurantResponse restaurants =
          RestaurantResponse.fromJson(response.data);
      return restaurants.restaurants;
    } catch (e) {
      throw e;
    }
  }

  Future<Restaurant> loadDetailRestaurant(String id) async {
    try {
      Response response = await _dio.get('detail/$id');
      var detail = DetailResponse.fromJson(response.data);
      return detail.restaurant;
    } catch (e) {
      throw e;
    }
  }

  Future<List<Restaurants>> searchRestaurant(String query) async {
    try {
      Response response = await _dio.get('search?q=$query');
      return RestaurantResponse.fromJson(response.data).restaurants;
    } catch (e) {
      throw e;
    }
  }
}
