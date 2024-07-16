import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather/core/functions/get_icon_weather.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:weather/weather/presentation/widgets/item_forecastday_weather.dart';

class ForecastdaysWeather extends StatelessWidget {
  const ForecastdaysWeather({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.60,
      child: Container(
        width: 345.w,
        height: 300.h,
        decoration: ShapeDecoration(
          color: const Color(0xFF525252),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ItemForecastdayWeather(
                day: DateFormat('EEEE')
                    .format(DateTime.now().add(const Duration(days: 1))),
                icon: getImage(
                    '${model.forecast!.forecastday![1].day!.condition!.text}'),
                status:
                    '${model.forecast!.forecastday![1].day!.condition!.text}',
                max: '${model.forecast!.forecastday![1].day!.maxtempC}',
                min: '${model.forecast!.forecastday![1].day!.mintempC}',
              ),
            ),
            Expanded(
              child: ItemForecastdayWeather(
                day: DateFormat('EEEE')
                    .format(DateTime.now().add(const Duration(days: 2))),
                icon: getImage(
                    '${model.forecast!.forecastday![2].day!.condition!.text}'),
                status:
                    '${model.forecast!.forecastday![2].day!.condition!.text}',
                max: '${model.forecast!.forecastday![2].day!.maxtempC}',
                min: '${model.forecast!.forecastday![2].day!.mintempC}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
