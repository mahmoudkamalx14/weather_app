import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/core/services/api_service.dart';
import 'package:weather/core/services/dio_factory.dart';
import 'package:weather/weather/data/repo/weather_repo.dart';
import 'package:weather/weather/logic/weather_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<WeatherRepo>(() => WeatherRepo(getIt()));

  getIt.registerFactory<WeatherCubit>(() => WeatherCubit(getIt()));

  //* CacheHelper

  //getIt.registerFactory<CacheHelper>(() => CacheHelper());
}
