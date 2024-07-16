import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/core/theme/app_styles.dart';
import 'package:weather/core/utils/app_space.dart';

class CustomSearchBotton extends StatelessWidget {
  const CustomSearchBotton({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 130.w,
        height: 50.h,
        decoration: ShapeDecoration(
          color: const Color(0x668C8C8C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Search',
              textAlign: TextAlign.center,
              style: AppStyles.style24Bold.copyWith(
                  color: Colors.white.withOpacity(0.6000000238418579)),
            ),
            horizontalSpace(6),
            Transform.rotate(
              angle: 160 * (22 / 7) / 160,
              child: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.white.withOpacity(0.6000000238418579),
              ),
            )
          ],
        ),
      ),
    );
  }
}
