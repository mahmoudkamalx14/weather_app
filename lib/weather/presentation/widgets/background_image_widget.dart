import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/functions/get_background_image.dart';
import 'package:weather/weather/data/model/weather_model.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key, required this.model});

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 944.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(getBackgroundImage('${model.location!.country}')),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
