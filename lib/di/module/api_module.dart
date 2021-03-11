import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:warung_makan/core/utils/logging_interceptor.dart';

@module
abstract class ApiModule {
  @lazySingleton
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
}
