import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:project_aws/common/exception.dart';
import 'package:project_aws/common/failure.dart';

typedef ResponseConverter<T> = T Function(dynamic response);
typedef ErrorConverter = Function(dynamic response, int? statusCode);

Future<Either<Failure, T>> safeCallApi<T>(Future<Response<dynamic>> call,
    {required ResponseConverter<T> onSuccess, int successCode = 200}) async {
  try {
    var response = await call;
    if (response.statusCode == successCode) {
      var transform = onSuccess(response.data);
      return Right(transform);
    } else {
      throw CommonException('something wrong! please try again!');
    }
  } catch (e) {
    throw CommonException('Request Time out! Please try again!');
  }
}
