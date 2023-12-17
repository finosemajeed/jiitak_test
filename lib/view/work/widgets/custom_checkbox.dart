import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.checkBoxName,
  });

  final String checkBoxName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.scale(
          scale: 1.2.r,
          child: Checkbox(
            activeColor: const Color(0xFFEE7D42),
            side: const BorderSide(width: 1.50, color: Color(0xFFE7E7E7)),
            value: false,
            onChanged: (_) {},
          ),
        ),
        Text(
          checkBoxName,
          style: TextStyle(
            color: const Color(0xFF4B4948),
            fontSize: 16.sp,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
