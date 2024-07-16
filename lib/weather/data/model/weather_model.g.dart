// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      lastUpdatedEpoch: (json['last_updated_epoch'] as num?)?.toInt(),
      lastUpdated: json['last_updated'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      isDay: (json['is_day'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
      windKph: (json['wind_kph'] as num?)?.toInt(),
      windDegree: (json['wind_degree'] as num?)?.toInt(),
      windDir: json['wind_dir'] as String?,
      humidity: (json['humidity'] as num?)?.toInt(),
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      windchillC: (json['windchill_c'] as num?)?.toInt(),
      heatindexC: (json['heatindex_c'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'last_updated_epoch': instance.lastUpdatedEpoch,
      'last_updated': instance.lastUpdated,
      'temp_c': instance.tempC,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'humidity': instance.humidity,
      'feelslike_c': instance.feelslikeC,
      'windchill_c': instance.windchillC,
      'heatindex_c': instance.heatindexC,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      forecastday: (json['forecastday'] as List<dynamic>?)
          ?.map((e) => Forecastday.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'forecastday': instance.forecastday,
    };

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) => Forecastday(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      day: json['day'] == null
          ? null
          : Day.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastdayToJson(Forecastday instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'day': instance.day,
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      maxtempC: (json['maxtemp_c'] as num?)?.toDouble(),
      mintempC: (json['mintemp_c'] as num?)?.toDouble(),
      avgtempC: (json['avgtemp_c'] as num?)?.toDouble(),
      maxwindKph: (json['maxwind_kph'] as num?)?.toInt(),
      avghumidity: (json['avghumidity'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'mintemp_c': instance.mintempC,
      'avgtemp_c': instance.avgtempC,
      'maxwind_kph': instance.maxwindKph,
      'avghumidity': instance.avghumidity,
      'condition': instance.condition,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      name: json['name'] as String?,
      country: json['country'] as String?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'localtime': instance.localtime,
    };
