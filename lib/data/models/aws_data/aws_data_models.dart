// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_aws/data/entity/aws_data.dart';

part 'aws_data_models.freezed.dart';
part 'aws_data_models.g.dart';

@Freezed(toJson: false, fromJson: true)
class AwsDataModels with _$AwsDataModels {
  const AwsDataModels._();

  factory AwsDataModels({
    @JsonKey(name: 'tt_air_avg', defaultValue: '-') @required String? airTemp,
    @JsonKey(name: 'rr', defaultValue: '-') @required String? rainfall,
    @JsonKey(name: 'pp_air', defaultValue: '-') @required String? airPressure,
    @JsonKey(name: 'rh_avg', defaultValue: '-') @required String? humidity,
    @JsonKey(name: 'sr_avg', defaultValue: '-') @required String? solarRad,
    @JsonKey(name: 'wd_avg', defaultValue: '-') @required String? windDirection,
    @JsonKey(name: 'ws_avg', defaultValue: '-') @required String? windSpeed,
    @JsonKey(name: 'tt_air_min', defaultValue: '-')
    @required
    String? airTempMin,
    @JsonKey(name: 'tt_air_max', defaultValue: '-')
    @required
    String? airTempMax,
    @JsonKey(name: 'ev_pan', defaultValue: '-') @required String? panEva,
    required DateTime? tanggal,
  }) = _AwsDataModels;

  factory AwsDataModels.fromJson(Map<String, dynamic> json) =>
      _$AwsDataModelsFromJson(json);

  AwsData toEntity() {
    return AwsData(
      airTemp: airTemp,
      rainfall: rainfall,
      airPressure: airPressure,
      humidity: humidity,
      solarRad: solarRad,
      windDirection: windDirection,
      windSpeed: windSpeed,
      airTempMin: airTempMin,
      airTempMax: airTempMax,
      panEva: panEva,
      tanggal: tanggal,
    );
  }
}
