import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconly/iconly.dart';
import 'package:jiitak_test/view/work/widgets/custom_checkbox.dart';
import 'package:jiitak_test/view/work/widgets/custom_checkbox_group.dart';
import 'package:jiitak_test/view/work/widgets/custom_group.dart';
import 'package:jiitak_test/view/work/widgets/custom_image_container.dart';
import 'package:jiitak_test/view/work/widgets/custom_submit_button.dart';
import 'package:jiitak_test/view/work/widgets/custom_textformfield.dart';

class WorksScreen extends StatelessWidget {
  WorksScreen({super.key});
  static const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0).w,
          child: Container(
            decoration: const ShapeDecoration(
              color: Color(0x198C807A),
              shape: OvalBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8).r,
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xffB8B8B8),
              ),
            ),
          ),
        ),
        title: Text(
          '店舗プロフィール編集',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF4B4948),
            fontSize: 15.sp,
            fontFamily: 'Noto Sans JP',
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20).r,
            child: Badge(
              backgroundColor: const Color(0xFFEE7D42),
              label: Text(
                '99+',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 6.95.sp,
                  fontFamily: 'Noto Sans JP',
                  fontWeight: FontWeight.w500,
                ),
              ),
              child: Icon(
                Icons.notifications_none_outlined,
                size: 23.r,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextFormField(
                  labelText: "店舗名",
                ),
                SizedBox(height: 16.h),
                const CustomTextFormField(
                  labelText: "代表担当者名",
                ),
                SizedBox(height: 16.h),
                const CustomTextFormField(
                  labelText: "店舗電話番号",
                ),
                SizedBox(height: 16.h),
                const CustomTextFormField(
                  labelText: "店舗住所",
                ),
                SizedBox(height: 16.h),
                Container(
                  width: 335.w,
                  height: 219.01.h,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/map.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    shadows: [
                      BoxShadow(
                        color: const Color(0x3FC3C3C3),
                        blurRadius: 15.r,
                        offset: const Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: '店舗外観',
                  labelText2: '（最大3枚まで）',
                  children: [
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image3.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image3.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12).r,
                      child: SizedBox(
                        width: 91.w,
                        height: 91.h,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                IconlyLight.image_2,
                                // Icons.image_outlined,
                                size: 38.r,
                                color: const Color(0xFF9C9795),
                              ),
                              Text(
                                '写真を追加',
                                style: TextStyle(
                                  color: const Color(0xFF9C9795),
                                  fontSize: 12.sp,
                                  fontFamily: 'Noto Sans JP',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: '店舗内観',
                  labelText2: '（1枚〜3枚ずつ追加してください）',
                  children: [
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image4.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image4.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image4.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: '店舗内観',
                  labelText2: '（1枚〜3枚ずつ追加してください）',
                  children: [
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image5.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image5.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image5.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: 'メニュー写真',
                  labelText2: '（1枚〜3枚ずつ追加してください）',
                  children: [
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image6.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image6.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    CustomImageContainer(
                      image: Image.asset(
                        'assets/images/image6.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: 'メニュー写真',
                  labelText2: '',
                  children: [
                    Row(
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            // isExpanded: true,
                            buttonStyleData: ButtonStyleData(
                              height: 38.h,
                              width: 124.w,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14).r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5).r,
                                  border: Border.all(
                                    color: const Color(0xffC7C4C0),
                                  ),
                                  color: Colors.white),
                            ),
                            iconStyleData: IconStyleData(
                              icon: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xffC7C4C0),
                              ),
                              iconSize: 24.r,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                            items: list
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            // value: '10:00',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8).r,
                          child: Text(
                            '〜',
                            style: TextStyle(
                              color: const Color(0xFF4B4948),
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            // isExpanded: true,
                            buttonStyleData: ButtonStyleData(
                              height: 38.h,
                              width: 124.w,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14).r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5).r,
                                  border: Border.all(
                                    color: const Color(0xffC7C4C0),
                                  ),
                                  color: Colors.white),
                            ),
                            iconStyleData: IconStyleData(
                              icon: const Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Color(0xffC7C4C0),
                              ),
                              iconSize: 24.r,
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            menuItemStyleData: const MenuItemStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                            ),
                            items: list
                                .map((String item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            // value: '10:00',
                          ),
                        ),
                      ],
                    )
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: DropdownMenu<String>(
                    //     trailingIcon:
                    //         const Icon(Icons.keyboard_arrow_down_outlined),
                    //     initialSelection: list.first,
                    //     onSelected: (String? value) {},
                    //     dropdownMenuEntries:
                    //         list.map<DropdownMenuEntry<String>>((String value) {
                    //       return DropdownMenuEntry<String>(
                    //           value: value, label: value);
                    //     }).toList(),
                    //   ),
                    // )
                  ],
                ),
                SizedBox(height: 16.h),
                const CustomCheckBoxGroup(
                  label: '定休日',
                  children: [
                    CustomCheckBox(checkBoxName: '月'),
                    CustomCheckBox(checkBoxName: '火'),
                    CustomCheckBox(checkBoxName: '水'),
                    CustomCheckBox(checkBoxName: '木'),
                    CustomCheckBox(checkBoxName: '金'),
                    CustomCheckBox(checkBoxName: '土'),
                    CustomCheckBox(checkBoxName: '日'),
                    CustomCheckBox(checkBoxName: '祝'),
                  ],
                ),
                CustomGroup(
                  labelText: '料理カテゴリー',
                  labelText2: '',
                  children: [
                    SizedBox(
                      child: DropdownMenu<String>(
                        trailingIcon:
                            const Icon(Icons.keyboard_arrow_down_outlined),
                        initialSelection: list.first,
                        onSelected: (String? value) {},
                        dropdownMenuEntries:
                            list.map<DropdownMenuEntry<String>>((String value) {
                          return DropdownMenuEntry<String>(
                              value: value, label: value);
                        }).toList(),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(
                  labelText: '予算',
                  labelText2: '',
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 38.h,
                          width: 124.w,
                          child: const CupertinoTextField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8).r,
                          child: Text(
                            '〜',
                            style: TextStyle(
                              color: const Color(0xFF4B4948),
                              fontSize: 16.sp,
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 38.h,
                          width: 124.w,
                          child: const CupertinoTextField(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                const CustomTextFormField(labelText: 'キャッチコピー'),
                SizedBox(height: 16.h),
                const CustomTextFormField(labelText: '座席数'),
                SizedBox(height: 16.h),
                const CustomCheckBoxGroup(
                  label: '喫煙席',
                  children: [
                    CustomCheckBox(checkBoxName: '有'),
                    CustomCheckBox(checkBoxName: '無'),
                  ],
                ),
                SizedBox(height: 16.h),
                const CustomCheckBoxGroup(
                  label: '駐車場',
                  children: [
                    CustomCheckBox(checkBoxName: '有'),
                    CustomCheckBox(checkBoxName: '無'),
                  ],
                ),
                SizedBox(height: 16.h),
                const CustomCheckBoxGroup(
                  label: '来店プレゼント',
                  children: [
                    CustomCheckBox(checkBoxName: '有（最大３枚まで)'),
                    CustomCheckBox(checkBoxName: '無'),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomGroup(labelText: '', labelText2: '', children: [
                  CustomImageContainer(
                    image: Image.asset(
                      'assets/images/image6.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  CustomImageContainer(
                    image: Image.asset(
                      'assets/images/image6.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  CustomImageContainer(
                    image: Image.asset(
                      'assets/images/image6.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ]),
                SizedBox(height: 16.h),
                const CustomTextFormField(labelText: '来店プレゼント名'),
                SizedBox(height: 40.h),
                const CustomSubmitButton(
                  label: '編集を保存',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
