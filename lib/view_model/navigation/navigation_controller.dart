import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class NavigationController extends GetxController {
  late Rx<PersistentTabController> navController;

  @override
  void onInit() {
    navController = Rx(PersistentTabController(initialIndex: 0));
    super.onInit();
  }
}
