// ignore_for_file: constant_identifier_names
part of "routes.dart";

abstract class RouteName {
  RouteName._();
  static const MAIN_SCREEN = _Paths.MAIN_SCREEN;
  static const SEARCH_SCREEN = _Paths.SEARCH_SCREEN;
  static const CHAT_SCREEN = _Paths.CHAT_SCREEN;
  static const PROFILE_SCREEN = _Paths.PROFILE_SCREEN;
  static const WORKS_SCREEN = _Paths.WORKS_SCREEN;
  static const SCAN_SCREEN = _Paths.SCAN_SCREEN;
}

abstract class _Paths {
  _Paths._();

  static const MAIN_SCREEN = '/main_screen';
  static const SEARCH_SCREEN = '/search_screen';
  static const CHAT_SCREEN = '/chat_screen';
  static const PROFILE_SCREEN = '/profile_screen';
  static const WORKS_SCREEN = '/works_screen';
  static const SCAN_SCREEN = '/scan_screen';
}
