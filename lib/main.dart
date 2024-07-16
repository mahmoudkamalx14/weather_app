import 'package:flutter/material.dart';
import 'package:weather/core/di/dependency_injection.dart';
import 'package:weather/core/routes/app_router.dart';
import 'package:weather/weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  runApp(
    WeatherApp(
      appRouter: AppRouter(),
    ),
  );
}

//? dart run build_runner build --delete-conflicting-outputs

//! dart run flutter_native_splash:create --path=flutter_native_splash.yaml
