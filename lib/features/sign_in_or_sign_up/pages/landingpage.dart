import 'package:event_manager/features/sign_in_or_sign_up/constants.dart';
import 'package:event_manager/features/sign_in_or_sign_up/pages/sign_in_landing_page.dart';
import 'package:event_manager/features/sign_in_or_sign_up/pages/sign_up_landing_page.dart';
import 'package:event_manager/global%20helpers/get_screen_size.dart';
import 'package:flutter/material.dart';

class SignInOrSignUpLandingPage extends StatelessWidget {
  const SignInOrSignUpLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: buildAppBar(context),
          body: const TabBarView(
              children: [SignInLandingPage(), SignUpLandingPage()])),
    );
  }

  AppBar buildAppBar(BuildContext context) => AppBar(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
        backgroundColor: const Color(0xff2F3164),
        toolbarHeight: GlobalConstants.getScreenHeight(context) * 0.15,
        bottom: const TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            indicatorColor: Colors.grey,
            indicatorWeight: 5,
            automaticIndicatorColorAdjustment: true,
            dividerHeight: 0,
            dividerColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                  child: Text(SignInOrSignUpConstants.signIn,
                      style: TextStyle(fontSize: 22))),
              Tab(
                  child: Text(SignInOrSignUpConstants.signUp,
                      style: TextStyle(fontSize: 22)))
            ]),
      );
}
