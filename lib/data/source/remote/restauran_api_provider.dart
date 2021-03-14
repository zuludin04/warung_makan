import 'package:dio/dio.dart';
import 'package:warung_makan/core/utils/logging_interceptor.dart';
import 'package:warung_makan/data/model/detail_response.dart';
import 'package:warung_makan/data/model/restaurant_response.dart';

class RestaurantApiProvider {
  Dio get dio => _dio();

  Dio _dio() {
    var options = BaseOptions(
      baseUrl: 'https://restaurant-api.dicoding.dev/',
      sendTimeout: 5000,
      receiveTimeout: 5000,
      connectTimeout: 5000,
    );

    Dio dio = Dio(options);
    dio.interceptors.add(LoggingInterceptors());
    return dio;
  }

  Future<List<RestaurantResult>> loadRestaurantList() async {
    try {
      Response response = await dio.get('list');
      RestaurantResponse restaurants =
          RestaurantResponse.fromJson(response.data);
      return restaurants.restaurants;
    } catch (e) {
      throw e;
    }
  }

  Future<DetailRestaurant> loadDetailRestaurant(String id) async {
    try {
      Response response = await dio.get('detail/$id');
      var detail = DetailResponse.fromJson(response.data);
      return detail.restaurant;
    } catch (e) {
      throw e;
    }
  }

  Future<List<RestaurantResult>> searchRestaurant(String query) async {
    try {
      Response response = await dio.get('search?q=$query');
      return RestaurantResponse.fromJson(response.data).restaurants;
    } catch (e) {
      throw e;
    }
  }
}
