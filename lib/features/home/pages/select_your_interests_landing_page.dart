import 'package:event_manager/features/home/interests_page_constants.dart';
import 'package:event_manager/features/home/pages/actual_tab_bar_landing_page.dart';
import 'package:event_manager/global%20helpers/get_screen_size.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeLandingPage extends StatelessWidget {
  HomeLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          shadowColor: const Color(0xff2B2D5E),
          centerTitle: true,
          title: const Text(
            InterestsPageConstants.selectYourInterests,
            style: GlobalConstants.globalHeadersStyleTwo,
          ),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              InterestsPageConstants.heading,
              style: GlobalConstants.globalHeadersStyleThree,
            ),
          ),
          SizedBox(
            height: GlobalConstants.getScreenHeight(context) * 0.65,
            width: double.infinity,
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: boxColors[index],
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            height: 75,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(images[index]))),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.only(top: 5),
                            height: 30,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Text(
                              category[index],
                              textAlign: TextAlign.center,
                              style: GlobalConstants.globalHeadersStyleThree,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ActualTabBarLandingPage()));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2B2D5E),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(InterestsPageConstants.continueButton,
                        style: GlobalConstants.globalHeadersStylButton),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  List<Color> boxColors = [
    const Color(0xffFEF1DD),
    const Color(0xffFDF9DF),
    const Color(0xffDCF9FF),
    const Color(0xffFEE8F2),
    const Color(0xffE7F1FF),
    const Color(0xffFFEBE8),
    const Color(0xffFFECE5),
    const Color(0xffEFF8E6),
    const Color(0xffE1F5FE)
  ];
  List<String> category = [
    "Sport",
    "Culture",
    "Party",
    "Game",
    "Tour",
    "Concert",
    "Food",
    "Music",
    "Beach"
  ];
  List<String> images = [
    "assets/sport.png",
    "assets/culture.png",
    "assets/party.png",
    "assets/game.png",
    "assets/adventure.png",
    "assets/festival.png",
    "assets/food.png",
    "assets/music.png",
    "assets/beach.png",
  ];
}
