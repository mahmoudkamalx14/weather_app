import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/di/dependency_injection.dart';
import 'package:weather/core/routes/routes.dart';
import 'package:weather/weather/logic/weather_cubit.dart';
import 'package:weather/weather/presentation/views/search_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    String? routeName = settings.name;

    switch (routeName) {
      case Routes.searchView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<WeatherCubit>(),
            child: SearchView(),
          ),
        );

      // case Routes.homeView:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<WeatherCubit>()
      //         ..emitWeatherDataStates(cityNameController.text)
      //         ..model,
      //       child: const HomeView(),
      //     ),
      //   );
    }
    return null;
  }
}
