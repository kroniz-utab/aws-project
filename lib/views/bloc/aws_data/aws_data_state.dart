part of 'aws_data_bloc.dart';

@freezed
class AwsDataState with _$AwsDataState {
  const factory AwsDataState.initial() = _Initial;
  const factory AwsDataState.loadign() = _Loading;
  const factory AwsDataState.success(AwsData data) = _Success;
  const factory AwsDataState.error(Failure failure) = _Error;
}
