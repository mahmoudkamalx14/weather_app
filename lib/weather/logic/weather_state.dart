import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState<T> with _$WeatherState {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.loading() = Loading;

  const factory WeatherState.success(T data) = Success<T>;

  const factory WeatherState.error({required String error}) = Error;
}
