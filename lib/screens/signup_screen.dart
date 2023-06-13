import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/login_screen.dart';
import 'package:shop/screens/otp_screen.dart';
import '../widgets/fields/text_field.dart';

// ignore: unused_import
import '../utils/routes/routs.dart';
import '../utils/styles.dart';
import '../widgets/buttons/arrow_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    triggerNotification() {
      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 10,
          channelKey: 'test_channel',
          title: "Hi, ${_textEditingController.text}",
          body: "Your One Time Password is ${1000 + Random().nextInt(9000)}",
          actionType: ActionType.Default,
        ),
      );
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to",
                    style: Styles.headLineStyle3
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Tummy Tail!",
                    style: Styles.headLineStyle1,
                  ),
                ],
              ),
              Image.asset('assets/images/burger.png')
            ],
          ),
          const Spacer(),
          Text(
            "Sign up to continue.",
            style: Styles.headLineStyle2,
          ),
          SizedBox(height: 20),
          CustomTextField(
            textEditingController: _textEditingController,
            hintText: "Name",
            icon: Icons.person_4_outlined,
            isNumber: false,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            textEditingController: _numberController,
            hintText: "Mobile No.",
            icon: Icons.phone_android_outlined,
            isNumber: true,
          ),
          SizedBox(height: 20),
          CustomTextField(
            textEditingController: _emailController,
            hintText: "Email",
            icon: Icons.email_outlined,
            isNumber: false,
          ),
          const Spacer(),
          ArrowButton(
            buttonColor: secondary,
            onTap: () {
              triggerNotification();
              Navigator.push(
                context,
                FadePageRoute(
                  builder: (context) => OtpVerification(
                    userName: _textEditingController.text.toString(),
                  ),
                ),
              );
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already a user? ",
                style: Styles.headLineStyle3,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    FadePageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  "Log in",
                  style: Styles.headLineStyle3
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
