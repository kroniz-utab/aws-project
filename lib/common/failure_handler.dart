import 'package:dartz/dartz.dart';
import 'package:project_aws/common/exception.dart';
import 'package:project_aws/common/failure.dart';

Future<Either<Failure, T>> failureHandler<T>(e) async {
  try {
    throw e;
  } on BadRequestException catch (e) {
    return Left(BadRequestFailure(e.message));
  } on UnauthenticateException catch (e) {
    return Left(UnauthenticationFailure(e.message));
  } on UnauthorizedException catch (e) {
    return Left(UnauthorizationFailure(e.message));
  } on NotFoundException {
    return const Left(NotFoundFailure('Invalid Id, Data not Found!'));
  } on ServerException catch (e) {
    return Left(ServerFailure(e.message));
  } on CommonException catch (e) {
    return Left(CommonFailure(e.message));
  } on UnknownException catch (e) {
    // sendCrashError(e);

    return Left(UnknownFailure(e.message ?? 'Something wrong'));
  }
}
