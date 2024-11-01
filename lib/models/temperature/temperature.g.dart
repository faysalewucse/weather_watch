// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      current: json['current'] == null
          ? const CurrentTemperature()
          : CurrentTemperature.fromJson(
              json['current'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? const Hourly()
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
      daily: json['daily'] == null
          ? const Daily()
          : Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
