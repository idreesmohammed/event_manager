import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterestsPageConstants {
  static const String heading =
      "Select a few of interests to match with events!";
  static const String continueButton = "Continue";
  static const String selectYourInterests = 'Select Your Interests';
  static const List<FaIcon> navBarIcons = [
    FaIcon(
      FontAwesomeIcons.house,
      color: Colors.white,
    ),
    FaIcon(
      FontAwesomeIcons.calendar,
      color: Colors.white,
    ),
    FaIcon(
      FontAwesomeIcons.plus,
      color: Colors.white,
    ),
    FaIcon(
      Icons.person,
      color: Colors.white,
    )
  ];
}
