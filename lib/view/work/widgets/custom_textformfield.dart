import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 60.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              ],
            ),
          ),
          SizedBox(
            height: 38.h,
            width: 335.w,
            child: const CupertinoTextField(),
          ),
        ],
      ),
    );
  }
}
