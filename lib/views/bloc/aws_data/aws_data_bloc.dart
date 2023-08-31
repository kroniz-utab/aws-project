import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_aws/common/failure.dart';
import 'package:project_aws/data/entity/aws_data.dart';
import 'package:project_aws/data/usecase/get_aws_data.dart';
import 'package:project_aws/helper/preferences_helper.dart';

part 'aws_data_event.dart';
part 'aws_data_state.dart';
part 'aws_data_bloc.freezed.dart';

class AwsDataBloc extends Bloc<AwsDataEvent, AwsDataState> {
  final PreferencesHelper prfs;
  final GetAwsData getAwsData;
  AwsDataBloc(this.prfs, this.getAwsData) : super(const _Initial()) {
    on<AwsDataEvent>((event, emit) async {
      emit(const _Initial());

      if (event is _Started) {
        emit(const _Loading());

        final String token = await prfs.accessToken;

        final result = await getAwsData.execute(token: token);

        result.fold((l) => emit(_Error(l)), (r) => emit(_Success(r)));
      }
    });
  }
}
