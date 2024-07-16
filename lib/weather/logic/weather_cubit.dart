import 'package:weather/weather/data/model/weather_model.dart';
import 'package:weather/weather/data/repo/weather_repo.dart';
import 'package:weather/weather/logic/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepo _weatherRepo;
  WeatherCubit(this._weatherRepo) : super(const WeatherState.initial());

  static WeatherCubit get(context) => BlocProvider.of(context);

  WeatherModel? model;

  void emitWeatherDataStates(String cityName) async {
    emit(const WeatherState.loading());

    final response = await _weatherRepo.getWeatherData(cityName);

    response.whenOrNull(
      success: (data) {
        model = data;
        emit(WeatherState.success(data));
      },
      failure: (error) {
        emit(WeatherState.error(error: error));
      },
    );
  }
}
