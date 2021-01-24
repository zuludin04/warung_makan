import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
abstract class NetworkException with _$NetworkException {
  const factory NetworkException.requestCancelled() = RequestCancelled;

  const factory NetworkException.requestTimeout() = RequestTimeout;

  const factory NetworkException.sendTimeout() = SendTimeout;

  const factory NetworkException.noInternetConnection() = NoInternetConnection;

  const factory NetworkException.defaultError(String error) = DefaultError;

  const factory NetworkException.unexpectedError() = UnexpectedError;

  static NetworkException getDioException(error) {
    if (error is Exception) {
      try {
        NetworkException networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.CANCEL:
              networkExceptions = NetworkException.requestCancelled();
              break;
            case DioErrorType.CONNECT_TIMEOUT:
              networkExceptions = NetworkException.requestTimeout();
              break;
            case DioErrorType.DEFAULT:
              networkExceptions = NetworkException.noInternetConnection();
              break;
            case DioErrorType.RECEIVE_TIMEOUT:
              networkExceptions = NetworkException.sendTimeout();
              break;
            case DioErrorType.RESPONSE: {
                var responseCode = error.response.statusCode;
                networkExceptions = NetworkException.defaultError(
                  "Received invalid status code: $responseCode",
                );
              }
              break;
            case DioErrorType.SEND_TIMEOUT:
              networkExceptions = NetworkException.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = NetworkException.noInternetConnection();
        } else {
          networkExceptions = NetworkException.unexpectedError();
        }
        return networkExceptions;
      } catch (_) {
        return NetworkException.unexpectedError();
      }
    } else {
      return NetworkException.unexpectedError();
    }
  }

  static String getMessageError(NetworkException exception) {
    var errorMessage = "";
    exception.when(
      requestCancelled: () =>
          errorMessage = "Something Wrong When Load Data. Try Again",
      requestTimeout: () =>
          errorMessage = "Something Wrong When Load Data. Try Again",
      sendTimeout: () => errorMessage = "Something Wrong When Load Data. Try Again",
      noInternetConnection: () =>
          errorMessage = "No Internet Connection. Please Try Again",
      defaultError: (String error) =>
          errorMessage = error,
      unexpectedError: () =>
          errorMessage = "Something Wrong When Load Data. Try Again",
    );
    return errorMessage;
  }
}
