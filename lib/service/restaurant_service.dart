import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:warung_makan/model/detail_response.dart';
import 'package:warung_makan/model/no_data_error.dart';
import 'package:warung_makan/model/restaurant_response.dart';
import 'package:warung_makan/utils/logging_interceptor.dart';

class RestaurantService {
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

  Future<Either<NoDataError, List<Restaurants>>> loadRestaurantList() async {
    try {
      Response response = await dio.get('list');
      return Right(RestaurantResponse.fromJson(response.data).restaurants);
    } catch (e) {
      return Left(NoDataError());
    }
  }

  Future<Either<NoDataError, Restaurant>> loadDetailRestaurant(
      String id) async {
    try {
      Response response = await dio.get('detail/$id');
      var detail = DetailResponse.fromJson(response.data);
      return Right(detail.restaurant);
    } catch (e) {
      return Left(NoDataError());
    }
  }

  Future<Either<NoDataError, List<Restaurants>>> searchRestaurant(String query) async {
    try {
      Response response = await dio.get('search?q=$query');
      return Right(RestaurantResponse.fromJson(response.data).restaurants);
    } catch (e) {
      return Left(NoDataError());
    }
  }
}
