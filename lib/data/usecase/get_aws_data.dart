import 'package:dartz/dartz.dart';
import 'package:project_aws/data/api/api.dart';

import '../../common/failure.dart';
import '../entity/aws_data.dart';

class GetAwsData {
  final RemoteAwsCenterDatasource datasource;

  GetAwsData(this.datasource);

  Future<Either<Failure, AwsData>> execute({required String token}) {
    return datasource.getDataFromAws(token: token);
  }
}
