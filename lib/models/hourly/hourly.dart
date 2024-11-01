import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly.freezed.dart';
part 'hourly.g.dart';

@freezed
class Hourly with _$Hourly {
  const factory Hourly({
    @JsonKey(name: 'temperature_2m') @Default([]) List<num> temperature2m, // JSON key 'temperature_2m'
  }) = _Hourly;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);
}
