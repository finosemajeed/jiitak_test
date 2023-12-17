// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:jiitak_test/view/chat/chat_screen.dart';
import 'package:jiitak_test/view/main/main_screen.dart';
import 'package:jiitak_test/view/profile/profile_screen.dart';
import 'package:jiitak_test/view/scan/scan_screen.dart';
import 'package:jiitak_test/view/search/search_screen.dart';
import 'package:jiitak_test/view/work/works_screen.dart';

part "route_name.dart";

class Routes {
  Routes._();

  static const INITIAL = RouteName.MAIN_SCREEN;

  static final routes = [
    GetPage(name: _Paths.MAIN_SCREEN, page: () => MainScreen()),
    GetPage(name: _Paths.SEARCH_SCREEN, page: () => const SearchScreen()),
    GetPage(name: _Paths.WORKS_SCREEN, page: () =>  WorksScreen()),
    GetPage(name: _Paths.SCAN_SCREEN, page: () => const ScanScreen()),
    GetPage(name: _Paths.CHAT_SCREEN, page: () => const ChatScreen()),
    GetPage(name: _Paths.PROFILE_SCREEN, page: () => const ProfileScreen()),
  ];
}
