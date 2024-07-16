import 'package:flutter/material.dart';
import 'package:weather/core/functions/get_icon_weather.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_space.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:weather/weather/presentation/widgets/current_weather_details.dart';

class DataOfWeather extends StatelessWidget {
  const DataOfWeather({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          getImage('${model.current!.condition!.text}'),
          fit: BoxFit.cover,
        ),
        Text('${model.current!.condition!.text}', style: AppStyles.style40Bold),
        verticalSpace(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${model.current!.tempC!.ceil()}',
              style: AppStyles.style86Medium,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'º', style: AppStyles.style24Bold),
                  TextSpan(text: 'C', style: AppStyles.style24Bold),
                ],
              ),
            ),
          ],
        ),
        verticalSpace(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CurrentWeatherDetails(
              icon: Icons.water_drop_outlined,
              title: 'HUMIDITY',
              body: '${model.current!.humidity} %',
            ),
            CurrentWeatherDetails(
              icon: Icons.wind_power_outlined,
              title: 'WIND',
              body: '${model.current!.windKph} km/h',
            ),
            CurrentWeatherDetails(
              icon: Icons.thermostat_sharp,
              title: 'FEELS LIKE',
              body: '${model.current!.feelslikeC} º',
            ),
          ],
        ),
      ],
    );
  }
}
