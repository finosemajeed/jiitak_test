import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:jiitak_test/res/color.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 24).w,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: SizedBox(
                    width: 241.w,
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '北海道, 札幌市',
                        hintStyle: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w500,
                          height: 0.07.h,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7F7F7),
                        contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 12)
                            .r,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.50).w,
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(width: 8),
                  Icon(
                    IconlyLight.filter,
                    size: 32.r,
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.favorite_border,
                    size: 32.r,
                    color: AppColor.accentColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 375.w,
              height: 33.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.77, 0.64),
                  end: Alignment(-0.77, -0.64),
                  colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                ),
              ),
              child: Center(
                  child: Text(
                '2022年 5月 26日（木）',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.mainTextColor,
                  fontSize: 14.sp,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                  height: 0.05.h,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
