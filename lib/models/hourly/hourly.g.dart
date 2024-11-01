// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyImpl _$$HourlyImplFromJson(Map<String, dynamic> json) => _$HourlyImpl(
      temperature2m: (json['temperature_2m'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HourlyImplToJson(_$HourlyImpl instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature2m,
    };
