import 'package:event_manager/features/sign_in_or_sign_up/constants.dart';
import 'package:event_manager/global%20helpers/get_screen_size.dart';
import 'package:flutter/material.dart';

class SignUpLandingPage extends StatelessWidget {
  const SignUpLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          buildHeaderText(),
          const SizedBox(height: 15),
          buildFirstName(),
          const SizedBox(height: 15),
          buildLastName(),
          const SizedBox(height: 15),
          buildEmailFormField(),
          const SizedBox(height: 15),
          buildPasswordFormField(),
          const SizedBox(height: 15),
          buildConfirmPasswordFormField(),
          const SizedBox(height: 10),
          buildSignUpButton()
        ],
      ),
    );
  }

  Padding buildHeaderText() => const Padding(
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Text(
          textAlign: TextAlign.center,
          SignInOrSignUpConstants.createAccount,
          style: GlobalConstants.globalHeadersStyle,
        ),
      );
  Padding buildConfirmPasswordFormField() => Padding(
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
                      hintText: SignInOrSignUpConstants.confirmPassword,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff2B2D5E),
                      )))),
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
                      hintText: SignInOrSignUpConstants.password,
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
  InkWell buildSignUpButton() => InkWell(
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
                  SignInOrSignUpConstants.signUp,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )),
      );
  Padding buildFirstName() => Padding(
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
                      hintText: SignInOrSignUpConstants.firstName,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff2B2D5E),
                      )))),
        ),
      );
  Padding buildLastName() => Padding(
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
                      hintText: SignInOrSignUpConstants.lastName,
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff2B2D5E),
                      )))),
        ),
      );
}
