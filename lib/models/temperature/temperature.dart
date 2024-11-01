import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_watch/models/current/current_temperature.dart';
import 'package:weather_watch/models/daily/daily.dart';
import 'package:weather_watch/models/hourly/hourly.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
class Temperature with _$Temperature {
  const factory Temperature({
    @Default(CurrentTemperature()) CurrentTemperature? current,
    @Default(Hourly()) Hourly hourly,
    @Default(Daily()) Daily daily,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
