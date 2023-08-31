// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_data_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AwsDataModels _$$_AwsDataModelsFromJson(Map<String, dynamic> json) =>
    _$_AwsDataModels(
      airTemp: json['tt_air_avg'] as String? ?? '-',
      rainfall: json['rr'] as String? ?? '-',
      airPressure: json['pp_air'] as String? ?? '-',
      humidity: json['rh_avg'] as String? ?? '-',
      solarRad: json['sr_avg'] as String? ?? '-',
      windDirection: json['wd_avg'] as String? ?? '-',
      windSpeed: json['ws_avg'] as String? ?? '-',
      airTempMin: json['tt_air_min'] as String? ?? '-',
      airTempMax: json['tt_air_max'] as String? ?? '-',
      panEva: json['ev_pan'] as String? ?? '-',
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
    );
