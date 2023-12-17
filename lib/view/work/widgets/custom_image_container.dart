import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageContainer extends StatelessWidget {
  const CustomImageContainer({
    super.key,
    this.image,
  });
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.5).w,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5).r,
            child: SizedBox(width: 91.w, height: 91.h, child: image),
          ),
          Positioned(
            right: 7.w,
            top: 7.h,
            child: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}