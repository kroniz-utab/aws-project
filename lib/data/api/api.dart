import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:project_aws/common/exception.dart';
import 'package:project_aws/common/failure.dart';
import 'package:project_aws/core/client.dart';
import 'package:project_aws/data/entity/auth.dart';
import 'package:project_aws/data/entity/aws_data.dart';
import 'package:project_aws/data/models/auth/auth_models.dart';
import 'package:project_aws/data/models/aws_data/aws_data_models.dart';

abstract class RemoteAwsCenterDatasource {
  Future<Either<Failure, Auth>> postAuth();
  Future<Either<Failure, AwsData>> getDataFromAws({required String token});
}

class RemoteAwsCenterDatasourceImpl extends AwsCenterClient
    implements RemoteAwsCenterDatasource {
  RemoteAwsCenterDatasourceImpl({required super.dioModule});

  @override
  Future<Either<Failure, Auth>> postAuth() {
    return post(
      '/auth/login',
      onSuccess: (response) => AuthModels.fromJson(response).toEntity(),
      data: {
        "username": dotenv.get('USERNAME'),
        "password": dotenv.get('PASSWORD')
      },
      cToken: CancelToken(),
      successCode: 200,
    );
  }

  @override
  Future<Either<Failure, AwsData>> getDataFromAws({required String token}) {
    const delayHour = 1;
    final dFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    final now = DateTime.now().toUtc();
    final before =
        DateTime.now().toUtc().subtract(const Duration(hours: delayHour));
    return get(
      '/getdata',
      onSuccess: (response) {
        if (response.length == 0) {
          throw NotFoundException();
        } else {
          final result = awsDataFromJson(response);
          result.sort(
            (a, b) => a.tanggal!.compareTo(b.tanggal!),
          );
          return result.last;
        }
      },
      cToken: CancelToken(),
      query: {
        "filter": '*',
        "token": token,
        "id_station": dotenv.get('ID_STATION'),
        "tgl_mulai": dFormat.format(before),
        "tgl_selesai": dFormat.format(now)
      },
    );
  }
}
