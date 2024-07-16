import 'package:flutter/material.dart';
import 'package:weather/core/utils/app_space.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:weather/weather/presentation/widgets/data_of_weather.dart';
import 'package:weather/weather/presentation/widgets/date_and_last_updated.dart';
import 'package:weather/weather/presentation/widgets/forecastdays_weather.dart';
import 'package:weather/weather/presentation/widgets/location_list_tile.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({
    super.key,
    required this.model,
  });
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LocationListTile(model: model),
        verticalSpace(42),
        DateAndLastUpdated(model: model),
        verticalSpace(30),
        Expanded(
          flex: 5,
          child: DataOfWeather(model: model),
        ),
        verticalSpace(14),
        Expanded(
          flex: 3,
          child: ForecastdaysWeather(model: model),
        ),
      ],
    );
  }
}
