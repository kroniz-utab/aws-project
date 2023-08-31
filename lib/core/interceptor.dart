import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  Future<FutureOr> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log('--> ${options.method.toUpperCase()} ${options.path}',
        name: 'DioInterceptor');
    log('Headers:', name: 'DioInterceptor');
    options.headers.forEach((key, value) {
      log('$key : $value', name: 'DioInterceptor');
    });

    if (options.queryParameters.isNotEmpty) {
      log('query params', name: 'DioInterceptor');
      options.queryParameters.forEach((key, value) {
        log('$key : $value', name: 'DioInterceptor');
      });
    }

    if (options.data != null) {
      log('body : ${options.data}', name: 'DioInterceptor');
    }

    handler.next(options);
  }

  @override
  Future<FutureOr> onError(
      DioError err, ErrorInterceptorHandler handler) async {
    log(
      '<-- ${err.message} ${(err.response?.requestOptions != null ? (err.response?.requestOptions.path) : 'URL')}',
      name: 'DioInterceptor',
    );
    log('${err.response != null ? err.response?.data : 'Unknown Error'}',
        name: 'DioInterceptor');
    log('<-- End Error', name: 'DioInterceptor');

    handler.next(err);
  }

  @override
  Future<FutureOr> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    log('<-- ${response.statusCode} ${(response.requestOptions.path)}',
        name: 'DioInterceptor');
    log('Headers:', name: 'DioInterceptor');
    response.headers.forEach((name, values) {
      log('$name : $values', name: 'DioInterceptor');
    });

    log('Response: ${response.data}', name: 'DioInterceptor');
    log('<-- End HTTP', name: 'DioInterceptor');

    handler.next(response);
  }
}
