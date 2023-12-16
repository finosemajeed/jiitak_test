import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitak_test/utils/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) {
        return GetMaterialApp(
          title: 'Jiitak_test',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.INITIAL,
          getPages: Routes.routes,
        );
      },
    );
  }
}
