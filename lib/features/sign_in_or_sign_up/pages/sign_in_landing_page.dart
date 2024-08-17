import 'package:event_manager/features/sign_in_or_sign_up/constants.dart';
import 'package:event_manager/global%20helpers/get_screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInLandingPage extends StatelessWidget {
  const SignInLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        buildHeaderText(),
        buildEmailFormField(),
        const SizedBox(height: 18),
        buildPasswordFormField(),
        buildCustomForgotPassword(),
        buildSignInButton(),
        buildDivider(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customMaterialButton(context,
                  color: Colors.white,
                  text: SignInOrSignUpConstants.google,
                  icon: FontAwesomeIcons.google,
                  iconColor: Colors.black,
                  textColor: Colors.black),
              customMaterialButton(context,
                  color: const Color(0xff2B2D5E),
                  text: SignInOrSignUpConstants.faceBook,
                  icon: FontAwesomeIcons.facebookF,
                  iconColor: Colors.white,
                  textColor: Colors.white),
            ],
          ),
        )
      ],
    );
  }

  Material customMaterialButton(BuildContext context,
      {required Color color,
      required String text,
      required icon,
      required iconColor,
      required textColor}) {
    return Material(
      color: color,
      elevation: 15,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(25),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          height: 50,
          width: GlobalConstants.getScreenWidth(context) * 0.35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FaIcon(
                icon,
                color: iconColor,
              ),
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ],
          )),
    );
  }

  Row buildDivider(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customDivider(context, left: true, right: false),
          const Text(SignInOrSignUpConstants.orSignInWith,
              style: TextStyle(fontWeight: FontWeight.w500)),
          customDivider(context, right: true, left: false)
        ],
      );

  InkWell buildSignInButton() => InkWell(
        onTap: null,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff2B2D5E),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                  SignInOrSignUpConstants.signIn,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )),
      );

  Container customDivider(BuildContext context,
      {required bool left, required bool right}) {
    return Container(
      margin: EdgeInsets.only(
          left: left == true && right == false ? 0 : 10,
          right: right == true && left == false ? 0 : 10),
      height: 1,
      width: GlobalConstants.getScreenWidth(context) * 0.25,
      color: Colors.black,
    );
  }

  Padding buildCustomForgotPassword() => Padding(
        padding: const EdgeInsets.fromLTRB(12, 10, 15, 10),
        child: Row(
          children: [
            Checkbox(value: true, onChanged: (val) {}),
            const Text(
              SignInOrSignUpConstants.rememberPassword,
              style: TextStyle(fontSize: 15, color: Color(0xff2B2D5E)),
            ),
            const Spacer(),
            const Text(
              SignInOrSignUpConstants.forgotPassword,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  Padding buildPasswordFormField() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 5,
          child: Container(
              height: 50,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xff2B2D5E),
                      ),
                      contentPadding: EdgeInsets.only(top: 12),
                      hintText: SignInOrSignUpConstants.faceBook,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff2B2D5E),
                      )))),
        ),
      );

  Padding buildEmailFormField() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 5,
          child: Container(
              height: 50,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 12),
                      hintText: SignInOrSignUpConstants.email,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email_sharp,
                        color: Color(0xff2B2D5E),
                      )))),
        ),
      );

  Padding buildHeaderText() => const Padding(
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Text(
          SignInOrSignUpConstants.enterYourCredentialsMessage,
          style: GlobalConstants.globalHeadersStyle,
        ),
      );
}
