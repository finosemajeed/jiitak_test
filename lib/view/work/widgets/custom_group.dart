
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGroup
 extends StatelessWidget {
  const CustomGroup
  (
      {super.key,
      required this.labelText,
      required this.labelText2,
      required this.children});
  final String labelText;
  final String labelText2;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: labelText,
                style: TextStyle(
                  color: const Color(0xFF4B4948),
                  fontSize: 14.sp,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: '*',
                style: TextStyle(
                  color: const Color(0xFFEA5307),
                  fontSize: 14.sp,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: labelText2,
                style: TextStyle(
                  color: const Color(0xFF9C9795),
                  fontSize: 14.sp,
                  fontFamily: 'Noto Sans JP',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ],
    );
  }
}