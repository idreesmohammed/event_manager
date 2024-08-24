import 'package:get/get.dart';

class TabBarHomeController extends GetxController {
  RxInt tabBarIndex = 0.obs;
  onTabChange({required currentIndex}) async {
    tabBarIndex.value = currentIndex;
    update();
  }
}
