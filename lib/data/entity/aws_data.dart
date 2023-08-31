// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AwsData extends Equatable {
  final String? airTemp;
  final String? rainfall;
  final String? airPressure;
  final String? humidity;
  final String? solarRad;
  final String? windDirection;
  final String? windSpeed;
  final String? airTempMin;
  final String? airTempMax;
  final String? panEva;
  final DateTime? tanggal;

  const AwsData({
    this.airTemp,
    this.rainfall,
    this.airPressure,
    this.humidity,
    this.solarRad,
    this.windDirection,
    this.windSpeed,
    this.airTempMin,
    this.airTempMax,
    this.panEva,
    this.tanggal,
  });

  @override
  List<Object?> get props => [
        airTemp,
        rainfall,
        airPressure,
        humidity,
        solarRad,
        windDirection,
        windSpeed,
        airTempMin,
        airTempMax,
        panEva,
        tanggal,
      ];
}
