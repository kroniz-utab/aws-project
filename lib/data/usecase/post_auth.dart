import 'package:dartz/dartz.dart';
import 'package:project_aws/data/api/api.dart';

import '../../common/failure.dart';
import '../entity/auth.dart';

class PostAuth {
  final RemoteAwsCenterDatasource datasource;

  PostAuth(this.datasource);

  Future<Either<Failure, Auth>> execute() {
    return datasource.postAuth();
  }
}
