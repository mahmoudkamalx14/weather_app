import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/routes/app_router.dart';
import 'package:weather/core/routes/routes.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 944),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.searchView,
          onGenerateRoute: appRouter.generateRoute,
        );
      }),
    );
  }
}
