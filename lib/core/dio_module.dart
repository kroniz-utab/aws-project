// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:project_aws/core/interceptor.dart';

class DioModule with DioMixin implements Dio {
  final String? contentType;
  final String baseUrl;

  DioModule({
    this.contentType = 'application/json',
    required this.baseUrl,
  }) {
    options = BaseOptions(
      baseUrl: baseUrl,
      contentType: contentType,
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      followRedirects: false,
      validateStatus: (status) {
        return status! <= 500;
      },
    );

    options = options;
    httpClientAdapter = IOHttpClientAdapter();

    if (kDebugMode) {
      interceptors.add(LoggingInterceptor());
    }
  }
}

class AwsCenterModule extends DioModule {
  AwsCenterModule({required super.baseUrl});
}
