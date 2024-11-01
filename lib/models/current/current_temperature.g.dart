// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentTemperatureImpl _$$CurrentTemperatureImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTemperatureImpl(
      temperature2m: (json['temperature_2m'] as num?)?.toDouble() ?? 0.0,
      relativeHumidity2m: (json['relative_humidity_2m'] as num?)?.toInt() ?? 0,
      rain: (json['rain'] as num?)?.toDouble() ?? 0.0,
      windSpeed10m: (json['wind_speed_10m'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CurrentTemperatureImplToJson(
        _$CurrentTemperatureImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature2m,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'rain': instance.rain,
      'wind_speed_10m': instance.windSpeed10m,
    };
