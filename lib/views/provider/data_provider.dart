import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_aws/data/entity/aws_data.dart';

final dataProvider = StateProvider.autoDispose<AwsData>((ref) {
  return const AwsData(
    airPressure: null,
    airTemp: null,
    airTempMax: null,
    airTempMin: null,
    humidity: null,
    panEva: null,
    rainfall: null,
    solarRad: null,
    windDirection: null,
    windSpeed: null,
    tanggal: null,
  );
});
