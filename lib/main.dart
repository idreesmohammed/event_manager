import 'package:event_manager/features/sign_in_or_sign_up/pages/landingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EventManagerApp());
}

class EventManagerApp extends StatelessWidget {
  const EventManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      ///todo- need to add the dark and light toggle
      // theme: ThemeData(
      //   tabBarTheme: TabBarTheme(
      //       labelColor: Colors.pink[800],
      //       labelStyle: TextStyle(color: Colors.pink[800]), // color for text
      //       indicator: UnderlineTabIndicator(
      //           // color for indicator (underline)
      //           borderSide: BorderSide(color: Colors.transparent))),
      //   primaryColor: Colors.pink[800], // outdated and has no effect to Tabbar
      // ),
      debugShowCheckedModeBanner: false,
      home: SignInOrSignUpLandingPage(),
    );
  }
}
