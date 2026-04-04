import 'package:dio/dio.dart';

class NetworkExceptions implements Exception {

  late String message;

  NetworkExceptions.fromDioException(
      DioException dioException) {

    switch (dioException.type) {

      case DioExceptionType.connectionTimeout:
        message = "Connection timeout";
        break;

      case DioExceptionType.sendTimeout:
        message = "Send timeout";
        break;

      case DioExceptionType.receiveTimeout:
        message = "Receive timeout";
        break;

      case DioExceptionType.badResponse:
        message =
            _handleStatusCode(
                dioException.response?.statusCode);
        break;

      case DioExceptionType.cancel:
        message = "Request cancelled";
        break;

      case DioExceptionType.unknown:
        message = "No internet connection";
        break;

      default:
        message = "Unexpected error occurred";
    }

  }

  static String _handleStatusCode(int? statusCode) {

    switch (statusCode) {

      case 400:
        return "Bad request";

      case 401:
        return "Unauthorized";

      case 403:
        return "Forbidden";

      case 404:
        return "Not found";

      case 409:
        return "Conflict";

      case 422:
        return "Unprocessable entity";

      case 500:
        return "Internal server error";

      case 503:
        return "Service unavailable";

      default:
        return "Something went wrong";
    }

  }

  @override
  String toString() => message;

}