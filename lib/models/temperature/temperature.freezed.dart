// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  CurrentTemperature? get current => throw _privateConstructorUsedError;
  Hourly get hourly => throw _privateConstructorUsedError;
  Daily get daily => throw _privateConstructorUsedError;

  /// Serializes this Temperature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call({CurrentTemperature? current, Hourly hourly, Daily daily});

  $CurrentTemperatureCopyWith<$Res>? get current;
  $HourlyCopyWith<$Res> get hourly;
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentTemperature?,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ) as $Val);
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentTemperatureCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentTemperatureCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HourlyCopyWith<$Res> get hourly {
    return $HourlyCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyCopyWith<$Res> get daily {
    return $DailyCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemperatureImplCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$TemperatureImplCopyWith(
          _$TemperatureImpl value, $Res Function(_$TemperatureImpl) then) =
      __$$TemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrentTemperature? current, Hourly hourly, Daily daily});

  @override
  $CurrentTemperatureCopyWith<$Res>? get current;
  @override
  $HourlyCopyWith<$Res> get hourly;
  @override
  $DailyCopyWith<$Res> get daily;
}

/// @nodoc
class __$$TemperatureImplCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$TemperatureImpl>
    implements _$$TemperatureImplCopyWith<$Res> {
  __$$TemperatureImplCopyWithImpl(
      _$TemperatureImpl _value, $Res Function(_$TemperatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = freezed,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_$TemperatureImpl(
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentTemperature?,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as Hourly,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as Daily,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureImpl implements _Temperature {
  const _$TemperatureImpl(
      {this.current = const CurrentTemperature(),
      this.hourly = const Hourly(),
      this.daily = const Daily()});

  factory _$TemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureImplFromJson(json);

  @override
  @JsonKey()
  final CurrentTemperature? current;
  @override
  @JsonKey()
  final Hourly hourly;
  @override
  @JsonKey()
  final Daily daily;

  @override
  String toString() {
    return 'Temperature(current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureImpl &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, current, hourly, daily);

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      __$$TemperatureImplCopyWithImpl<_$TemperatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureImplToJson(
      this,
    );
  }
}

abstract class _Temperature implements Temperature {
  const factory _Temperature(
      {final CurrentTemperature? current,
      final Hourly hourly,
      final Daily daily}) = _$TemperatureImpl;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$TemperatureImpl.fromJson;

  @override
  CurrentTemperature? get current;
  @override
  Hourly get hourly;
  @override
  Daily get daily;

  /// Create a copy of Temperature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
