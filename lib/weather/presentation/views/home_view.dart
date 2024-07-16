import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/di/dependency_injection.dart';
import 'package:weather/weather/data/model/weather_model.dart';
import 'package:weather/weather/logic/weather_cubit.dart';
import 'package:weather/weather/logic/weather_state.dart';
import 'package:weather/weather/presentation/widgets/background_image_widget.dart';
import 'package:weather/weather/presentation/widgets/body_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.model,
  });

  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WeatherCubit>(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                BackgroundImageWidget(model: model),
                SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
                    child: BodyScreen(model: model),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
