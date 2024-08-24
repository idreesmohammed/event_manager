import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:event_manager/features/home/controller/tab_bar_home_controller.dart';
import 'package:event_manager/features/home/interests_page_constants.dart';

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
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 10),
                    height: GlobalConstants.getScreenHeight(context) * 0.2,
                    width: double.infinity,
                    color: GlobalConstants.globalColorTheme,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ],
                    )),
                SizedBox(height: 100),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name', style: GlobalConstants.globalHeadersStyle),
                      TextFormField(
                          decoration:
                              InputDecoration(hintText: "Mohammed Idrees")),
                      SizedBox(height: 30),
                      Text('Your Phone',
                          style: GlobalConstants.globalHeadersStyle),
                      TextFormField(
                          decoration: InputDecoration(hintText: "1234567890")),
                      SizedBox(height: 30),
                      Text('Unique Id',
                          style: GlobalConstants.globalHeadersStyle),
                      TextFormField(
                          decoration: InputDecoration(hintText: "1234567890")),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: Container(
                              height: 55,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xff2B2D5E),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: GlobalConstants.getScreenHeight(context) * 0.11,
              left: GlobalConstants.getScreenWidth(context) * 0.03,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80)),
                child: Center(
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
