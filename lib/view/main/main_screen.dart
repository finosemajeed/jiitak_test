import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:jiitak_test/res/color.dart';
import 'package:jiitak_test/view/chat/chat_screen.dart';
import 'package:jiitak_test/view/profile/profile_screen.dart';
import 'package:jiitak_test/view/scan/scan_screen.dart';
import 'package:jiitak_test/view/search/search_screen.dart';
import 'package:jiitak_test/view/work/works_screen.dart';
import 'package:jiitak_test/view_model/navigation/navigation_controller.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.put(NavigationController());
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return PersistentTabView(
        context,
        controller: controller.navController.value,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        stateManagement: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style15,
      );
    });
  }

  List<Widget> _buildScreens() {
    return [
      const SearchScreen(),
       WorksScreen(),
      const ScanScreen(),
      const ChatScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyLight.search),
        title: "さがす",
        activeColorPrimary: AppColor.primaryColor,
        inactiveColorPrimary: AppColor.mainTextColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyLight.bag),
        title: "お仕事",
        activeColorPrimary: AppColor.primaryColor,
        inactiveColorPrimary: AppColor.mainTextColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyLight.scan),
        title: "Home",
        activeColorPrimary: AppColor.primaryColor,
        inactiveColorPrimary: AppColor.mainTextColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyLight.chat),
        title: "チャット",
        activeColorPrimary: AppColor.primaryColor,
        inactiveColorPrimary: AppColor.mainTextColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(IconlyLight.profile),
        title: "マイページ",
        activeColorPrimary: AppColor.primaryColor,
        inactiveColorPrimary: AppColor.mainTextColor,
      ),
    ];
  }
}
