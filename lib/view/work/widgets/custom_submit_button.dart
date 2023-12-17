
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 46.h,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(1.00, 0.04),
          end: Alignment(-1, -0.04),
          colors: [Color(0xFFEE7D42), Color(0xFFFFC7AB)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5).r),
        shadows: [
          BoxShadow(
            color: const Color(0x3FEE7D42),
            blurRadius: 15.r,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.40.r,
          ),
        ),
      ),
    );
  }
}