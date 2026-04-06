import 'package:dio/dio.dart';
import 'package:ishraq/core/network/api_logger.dart';
 import 'package:ishraq/core/network/network_exceptions.dart';

class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late Dio dio;

  ApiClient._internal() {
    dio = Dio(
      BaseOptions(
        
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        responseType: ResponseType.json,
      ),
    );

    dio.interceptors.add(AppDioLogger());
  }

  // ================= GET =================
Future<Map<String, dynamic>> get(
    String path, {
  required String baseUrl,
  Map<String, dynamic>? query,
}) async {
  try {
    final response = await dio.get(
      baseUrl + path,
      queryParameters: query,
    );

    return response.data;
  } on DioException catch (e) {
    throw NetworkExceptions.fromDioException(e);
  }
}
  // ================= POST =================
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await dio.post(path, data: data, queryParameters: query);
      return response.data;
    } on DioException catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }

  // ================= PUT =================
  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await dio.put(path, data: data, queryParameters: query);
      return response.data;
    } on DioException catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }

  // ================= DELETE =================
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioException catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }

  // ================= PATCH =================
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: query,
      );
      return response.data;
    } on DioException catch (e) {
      throw NetworkExceptions.fromDioException(e);
    }
  }
}
