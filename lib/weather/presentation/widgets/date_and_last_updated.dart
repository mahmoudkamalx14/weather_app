import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_space.dart';
import 'package:weather/weather/data/model/weather_model.dart';

class DateAndLastUpdated extends StatelessWidget {
  const DateAndLastUpdated({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${DateTime.now().day.toString()} ${DateFormat('MMMM').format(DateTime.now())}',
          style: AppStyles.style40Bold,
        ),
        verticalSpace(9),
        Text(
          'Updated  ${model.current!.lastUpdated} PM',
          style: AppStyles.style16Light,
        ),
      ],
    );
  }
}
