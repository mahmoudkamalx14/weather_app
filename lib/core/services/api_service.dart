import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather/core/utils/app_constants.dart';
import 'package:weather/weather/data/model/weather_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("forecast.json")
  Future<WeatherModel> getWeatherData(
    @Query("key") String apiKey,
    @Query("q") String cityName,
    @Query("days") int days,
  );
}
