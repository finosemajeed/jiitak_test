import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBoxGroup extends StatelessWidget {
  const CustomCheckBoxGroup({
    super.key,
    required this.children,
    required this.label,
  });
  final List<Widget> children;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: label,
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
            ],
          ),
        ),
        SizedBox(
          // width: 251.w,
          child: Wrap(
            spacing: 24.w,
            children: children,
          ),
        )
      ],
    );
  }
}
