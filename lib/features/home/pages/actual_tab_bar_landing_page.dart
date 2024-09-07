import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_manager/features/home/controller/tab_bar_home_controller.dart';
import 'package:event_manager/features/home/interests_page_constants.dart';
import 'package:event_manager/features/profile/pages/profile_landing_page.dart';

import 'package:event_manager/global%20helpers/get_screen_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActualTabBarLandingPage extends GetView<TabBarHomeController> {
  final TabBarHomeController controller = Get.put(TabBarHomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            animationDuration: Duration(milliseconds: 300),
            color: GlobalConstants.globalColorTheme,
            backgroundColor: Colors.transparent,
            height: 60,
            index: controller.tabBarIndex.value,
            onTap: (val) {
              print(val);
              controller.onTabChange(currentIndex: val);
              switch (controller.tabBarIndex.value) {}
            },
            items: InterestsPageConstants.navBarIcons),
        body: Obx(() {
          if (controller.tabBarIndex == 1) return Text("add event");
          if (controller.tabBarIndex == 2) return Text("schedules");
          if (controller.tabBarIndex == 3) return ProfileView();
          return Text("Home");
        }));
  }
}
