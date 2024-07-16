import 'package:flutter/material.dart';
import 'package:weather/core/theme/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.text,
      style: AppStyles.style18Regular.copyWith(
        color: Colors.white.withOpacity(0.6000000238418579),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Search bar must not be empty!!!';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        hintText: 'Search for weather updates by city',
        hintStyle: AppStyles.style16Regular
            .copyWith(color: Colors.white.withOpacity(0.6000000238418579)),
        suffixIcon: const Icon(Icons.search_sharp, size: 40),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
