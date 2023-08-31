// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:project_aws/common/failure.dart';
import 'package:project_aws/common/failure_handler.dart';
import 'package:project_aws/core/api_call.dart';

import 'package:project_aws/core/dio_module.dart';

class DioClient {
  final DioModule dio;
  final CancelToken cancelToken;

  DioClient({
    required DioModule dioModule,
    HttpClientAdapter? httpClientAdapter,
  })  : dio = dioModule,
        cancelToken = CancelToken() {
    if (httpClientAdapter != null) dio.httpClientAdapter = httpClientAdapter;
  }

  void cancelRequest({CancelToken? cancelToken}) {
    if (cancelToken == null) {
      cancelToken?.cancel('canceled');
    } else {
      cancelToken.cancel();
    }
  }

  Future<Either<Failure, T>> get<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Options? options,
    CancelToken? cToken,
    required ResponseConverter<T> onSuccess,
    int successCode = 200,
  }) async {
    try {
      var response = await safeCallApi(
        dio.get(
          endpoint,
          queryParameters: query,
          options: options,
          cancelToken: cToken ?? cancelToken,
        ),
        onSuccess: onSuccess,
        successCode: successCode,
      );
      return response;
    } catch (e) {
      return failureHandler(e);
    }
  }

  Future<Either<Failure, T>> post<T>(
    String endpoint, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    Options? options,
    CancelToken? cToken,
    required ResponseConverter<T> onSuccess,
    int successCode = 201,
  }) async {
    try {
      var response = await safeCallApi(
        dio.post(
          endpoint,
          data: data,
          queryParameters: query,
          options: options,
          cancelToken: cToken ?? cancelToken,
        ),
        onSuccess: onSuccess,
        successCode: successCode,
      );
      return response;
    } catch (e) {
      return failureHandler(e);
    }
  }
}

class AwsCenterClient extends DioClient {
  AwsCenterClient({required super.dioModule});
}
