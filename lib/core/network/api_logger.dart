import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppDioLogger extends Interceptor {

  @override
  void onRequest(options, handler) {

    if (kDebugMode) {

      options.extra["startTime"] = DateTime.now();

      log("""
REQUEST → ${options.method}
URL → ${options.uri}

HEADERS → ${options.headers}

QUERY → ${options.queryParameters}

BODY → ${options.data}
""");

    }

    handler.next(options);
  }

  @override
  void onResponse(response, handler) {

    if (kDebugMode) {

      final startTime =
          response.requestOptions.extra["startTime"];

      final duration =
          DateTime.now().difference(startTime);

      log("""
RESPONSE ← ${response.statusCode}

TIME → ${duration.inMilliseconds} ms

DATA → ${response.data}
""");

    }

    handler.next(response);
  }

  @override
  void onError(err, handler) {

    if (kDebugMode) {

      log("""
ERROR ✖ ${err.message}

STATUS CODE → ${err.response?.statusCode}

DATA → ${err.response?.data}
""");

    }

    handler.next(err);
  }

}