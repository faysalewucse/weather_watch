import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily.freezed.dart';
part 'daily.g.dart';

@freezed
class Daily with _$Daily {
  const factory Daily({
    @JsonKey(name: 'temperature_2m_max') @Default([]) List<double> temperature2mMax,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}
