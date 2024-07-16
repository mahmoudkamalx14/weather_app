import 'package:flutter/material.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_space.dart';

class CurrentWeatherDetails extends StatelessWidget {
  const CurrentWeatherDetails({
    super.key,
    required this.icon,
    required this.title,
    required this.body,
  });

  final IconData icon;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 40),
        verticalSpace(8),
        Text(title, style: AppStyles.style14Medium),
        verticalSpace(8),
        Text(body, style: AppStyles.style14Medium),
      ],
    );
  }
}
