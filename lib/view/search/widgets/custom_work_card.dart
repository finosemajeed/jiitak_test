
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiitak_test/res/color.dart';

class CustomWorkCard extends StatelessWidget {
  const CustomWorkCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16).r,
      child: Stack(
        children: [
          SizedBox(
            width: 335.w,
            child: Container(
              width: 325.w,
              // height: 399.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15).r,
                ),
                shadows: [
                  BoxShadow(
                    color: const Color(0x26889FBB),
                    blurRadius: 25.r,
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(children: [
                Container(
                  width: 325.w,
                  height: 186.h,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/image1.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(15).w,
                        topRight: const Radius.circular(15).w,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                          top: 16, bottom: 23, left: 20, right: 20)
                      .r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.,
                    children: [
                      Text(
                        '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: 13.sp,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 7.w),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 130.w,
                              height: 25.h,
                              decoration: ShapeDecoration(
                                color: const Color(0x19EEAB40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                              child: Center(
                                child: Text(
                                  '介護付き有料老人ホーム',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontSize: 10.sp,
                                    fontFamily: 'Noto Sans JP',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                          Text(
                            '¥ 6,000',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: AppColor.mainTextColor,
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.w),
                      Text(
                        '5月 31日（水）08 : 00 ~ 17 : 00',
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '北海道札幌市東雲町3丁目916番地17号',
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '交通費 300円',
                        style: TextStyle(
                          color: AppColor.mainTextColor,
                          fontSize: 12.sp,
                          fontFamily: 'Noto Sans JP',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '住宅型有料老人ホームひまわり倶楽部',
                            style: TextStyle(
                              color: AppColor.subTextColor,
                              fontSize: 12.sp,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border,
                            size: 36.r,
                            color: AppColor.subTextColor,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          Positioned(
            left: -5.w,
            top: 159.h,
            child: Container(
                width: 74.w,
                height: 20.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFF6162),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.43).r,
                  ),
                ),
                child: Center(
                  child: Text(
                    '本日まで',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontFamily: 'Noto Sans JP',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
