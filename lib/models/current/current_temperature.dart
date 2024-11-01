import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_temperature.freezed.dart';
part 'current_temperature.g.dart';

@freezed
class CurrentTemperature with _$CurrentTemperature {
  const factory CurrentTemperature({
    @JsonKey(name: 'temperature_2m') @Default(0.0) double temperature2m,
    @JsonKey(name: 'relative_humidity_2m') @Default(0) int relativeHumidity2m,
    @Default(0.0) double rain,
    @JsonKey(name: 'wind_speed_10m') @Default(0.0) double windSpeed10m,
  }) = _CurrentTemperature;

  factory CurrentTemperature.fromJson(Map<String, dynamic> json) =>
      _$CurrentTemperatureFromJson(json);
}
