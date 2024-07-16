import 'package:weather/core/services/api_result.dart';
import 'package:weather/core/services/api_service.dart';
import 'package:weather/core/utils/app_constants.dart';
import 'package:weather/weather/data/model/weather_model.dart';

class WeatherRepo {
  final ApiService _apiService;

  WeatherRepo(this._apiService);

  Future<ApiResult<WeatherModel>> getWeatherData(String cityName) async {
    try {
      final response =
          await _apiService.getWeatherData(AppConstants.apiKey, cityName, 3);
      return ApiResult.success(response);
    } on Exception catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
