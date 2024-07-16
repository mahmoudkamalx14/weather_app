import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  WeatherModel({
    required this.location,
    required this.current,
    required this.forecast,
  });

  final Location? location;
  final Current? current;
  final Forecast? forecast;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class Current {
  Current({
    required this.lastUpdatedEpoch,
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.humidity,
    required this.feelslikeC,
    required this.windchillC,
    required this.heatindexC,
  });

  @JsonKey(name: 'last_updated_epoch')
  final int? lastUpdatedEpoch;

  @JsonKey(name: 'last_updated')
  final String? lastUpdated;

  @JsonKey(name: 'temp_c')
  final double? tempC;

  @JsonKey(name: 'is_day')
  final int? isDay;
  final Condition? condition;

  @JsonKey(name: 'wind_kph')
  final int? windKph;

  @JsonKey(name: 'wind_degree')
  final int? windDegree;

  @JsonKey(name: 'wind_dir')
  final String? windDir;
  final int? humidity;

  @JsonKey(name: 'feelslike_c')
  final double? feelslikeC;

  @JsonKey(name: 'windchill_c')
  final int? windchillC;

  @JsonKey(name: 'heatindex_c')
  final int? heatindexC;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Condition {
  Condition({
    required this.text,
    required this.icon,
  });

  final String? text;
  final String? icon;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Forecast {
  Forecast({
    required this.forecastday,
  });

  final List<Forecastday>? forecastday;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

@JsonSerializable()
class Forecastday {
  Forecastday({
    required this.date,
    required this.day,
  });

  final DateTime? date;
  final Day? day;

  factory Forecastday.fromJson(Map<String, dynamic> json) =>
      _$ForecastdayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);
}

@JsonSerializable()
class Day {
  Day({
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
    required this.maxwindKph,
    required this.avghumidity,
    required this.condition,
  });

  @JsonKey(name: 'maxtemp_c')
  final double? maxtempC;

  @JsonKey(name: 'mintemp_c')
  final double? mintempC;

  @JsonKey(name: 'avgtemp_c')
  final double? avgtempC;

  @JsonKey(name: 'maxwind_kph')
  final int? maxwindKph;
  final int? avghumidity;
  final Condition? condition;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}

@JsonSerializable()
class Location {
  Location({
    required this.name,
    required this.country,
    required this.localtime,
  });

  final String? name;
  final String? country;
  final String? localtime;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
