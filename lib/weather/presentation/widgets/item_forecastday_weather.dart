import 'package:flutter/material.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_space.dart';

class ItemForecastdayWeather extends StatelessWidget {
  const ItemForecastdayWeather({
    super.key,
    required this.day,
    required this.icon,
    required this.status,
    required this.max,
    required this.min,
  });

  final String day;
  final String icon;
  final String status;
  final String max;
  final String min;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: AppStyles.style24Bold),
        Expanded(
          child: Image.asset(icon, fit: BoxFit.cover),
        ),
        Expanded(
          child: Text(
            status,
            maxLines: 1,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            style: AppStyles.style24Bold,
          ),
        ),
        verticalSpace(6),
        Text('max: $max ºC',
            style: AppStyles.style18Regular.copyWith(height: 0)),
        verticalSpace(6),
        Text('min: $min ºC',
            style: AppStyles.style18Regular.copyWith(height: 0)),
      ],
    );
  }
}
