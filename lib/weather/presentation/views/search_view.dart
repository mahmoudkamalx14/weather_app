import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_constants.dart';
import 'package:weather/core/utils/app_space.dart';
import 'package:weather/weather/logic/weather_cubit.dart';
import 'package:weather/weather/logic/weather_state.dart';
import 'package:weather/weather/presentation/views/home_view.dart';
import 'package:weather/weather/presentation/widgets/custom_search_botton.dart';
import 'package:weather/weather/presentation/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) {
            var model = WeatherCubit.get(context).model;
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => HomeView(model: model!)));
          },
          error: (error) {
            log('Error !!!!!!!!!!!!!!!');
          },
        );
      },
      builder: (context, state) {
        var cubit = WeatherCubit.get(context);

        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 944.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.71, -0.71),
                  end: Alignment(-0.71, 0.71),
                  colors: [
                    Color(0xFF22242A),
                    Color(0xFF2A2F33),
                    Color(0xFF1C1D20)
                  ],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 40.h, horizontal: 24.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/Cloud_Icon.png'),
                          Image.asset('assets/images/CloudQuest.png'),
                        ],
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            verticalSpace(45),
                            CustomTextFormField(controller: cityNameController),
                            verticalSpace(30),
                            CustomSearchBotton(
                              onTap: () {
                                validateAndGetWeather(cubit);
                              },
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(10),
                      if (state is Loading) const LinearProgressIndicator(),
                      verticalSpace(30),
                      Image.asset('assets/images/sun.png'),
                      verticalSpace(30),
                      Text(
                        '${DateTime.now().day.toString()} ${DateFormat('MMMM').format(DateTime.now())}',
                        style: AppStyles.style40Bold,
                      ),
                      verticalSpace(30),
                      Text(
                        DateFormat('EEEE').format(DateTime.now()),
                        style: AppStyles.style40Bold,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void validateAndGetWeather(WeatherCubit cubit) {
    if (formKey.currentState!.validate()) {
      cubit.emitWeatherDataStates(cityNameController.text);
    }
  }
}
