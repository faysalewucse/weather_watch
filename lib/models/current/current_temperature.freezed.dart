// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentTemperature _$CurrentTemperatureFromJson(Map<String, dynamic> json) {
  return _CurrentTemperature.fromJson(json);
}

/// @nodoc
mixin _$CurrentTemperature {
  @JsonKey(name: 'temperature_2m')
  double get temperature2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  int get relativeHumidity2m => throw _privateConstructorUsedError;
  double get rain => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed10m => throw _privateConstructorUsedError;

  /// Serializes this CurrentTemperature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentTemperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentTemperatureCopyWith<CurrentTemperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTemperatureCopyWith<$Res> {
  factory $CurrentTemperatureCopyWith(
          CurrentTemperature value, $Res Function(CurrentTemperature) then) =
      _$CurrentTemperatureCopyWithImpl<$Res, CurrentTemperature>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') double temperature2m,
      @JsonKey(name: 'relative_humidity_2m') int relativeHumidity2m,
      double rain,
      @JsonKey(name: 'wind_speed_10m') double windSpeed10m});
}

/// @nodoc
class _$CurrentTemperatureCopyWithImpl<$Res, $Val extends CurrentTemperature>
    implements $CurrentTemperatureCopyWith<$Res> {
  _$CurrentTemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentTemperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? rain = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_value.copyWith(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as int,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentTemperatureImplCopyWith<$Res>
    implements $CurrentTemperatureCopyWith<$Res> {
  factory _$$CurrentTemperatureImplCopyWith(_$CurrentTemperatureImpl value,
          $Res Function(_$CurrentTemperatureImpl) then) =
      __$$CurrentTemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temperature_2m') double temperature2m,
      @JsonKey(name: 'relative_humidity_2m') int relativeHumidity2m,
      double rain,
      @JsonKey(name: 'wind_speed_10m') double windSpeed10m});
}

/// @nodoc
class __$$CurrentTemperatureImplCopyWithImpl<$Res>
    extends _$CurrentTemperatureCopyWithImpl<$Res, _$CurrentTemperatureImpl>
    implements _$$CurrentTemperatureImplCopyWith<$Res> {
  __$$CurrentTemperatureImplCopyWithImpl(_$CurrentTemperatureImpl _value,
      $Res Function(_$CurrentTemperatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentTemperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
    Object? relativeHumidity2m = null,
    Object? rain = null,
    Object? windSpeed10m = null,
  }) {
    return _then(_$CurrentTemperatureImpl(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity2m: null == relativeHumidity2m
          ? _value.relativeHumidity2m
          : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
              as int,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed10m: null == windSpeed10m
          ? _value.windSpeed10m
          : windSpeed10m // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentTemperatureImpl implements _CurrentTemperature {
  const _$CurrentTemperatureImpl(
      {@JsonKey(name: 'temperature_2m') this.temperature2m = 0.0,
      @JsonKey(name: 'relative_humidity_2m') this.relativeHumidity2m = 0,
      this.rain = 0.0,
      @JsonKey(name: 'wind_speed_10m') this.windSpeed10m = 0.0});

  factory _$CurrentTemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentTemperatureImplFromJson(json);

  @override
  @JsonKey(name: 'temperature_2m')
  final double temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  final int relativeHumidity2m;
  @override
  @JsonKey()
  final double rain;
  @override
  @JsonKey(name: 'wind_speed_10m')
  final double windSpeed10m;

  @override
  String toString() {
    return 'CurrentTemperature(temperature2m: $temperature2m, relativeHumidity2m: $relativeHumidity2m, rain: $rain, windSpeed10m: $windSpeed10m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTemperatureImpl &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m) &&
            (identical(other.relativeHumidity2m, relativeHumidity2m) ||
                other.relativeHumidity2m == relativeHumidity2m) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.windSpeed10m, windSpeed10m) ||
                other.windSpeed10m == windSpeed10m));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, temperature2m, relativeHumidity2m, rain, windSpeed10m);

  /// Create a copy of CurrentTemperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTemperatureImplCopyWith<_$CurrentTemperatureImpl> get copyWith =>
      __$$CurrentTemperatureImplCopyWithImpl<_$CurrentTemperatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTemperatureImplToJson(
      this,
    );
  }
}

abstract class _CurrentTemperature implements CurrentTemperature {
  const factory _CurrentTemperature(
          {@JsonKey(name: 'temperature_2m') final double temperature2m,
          @JsonKey(name: 'relative_humidity_2m') final int relativeHumidity2m,
          final double rain,
          @JsonKey(name: 'wind_speed_10m') final double windSpeed10m}) =
      _$CurrentTemperatureImpl;

  factory _CurrentTemperature.fromJson(Map<String, dynamic> json) =
      _$CurrentTemperatureImpl.fromJson;

  @override
  @JsonKey(name: 'temperature_2m')
  double get temperature2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  int get relativeHumidity2m;
  @override
  double get rain;
  @override
  @JsonKey(name: 'wind_speed_10m')
  double get windSpeed10m;

  /// Create a copy of CurrentTemperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentTemperatureImplCopyWith<_$CurrentTemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
