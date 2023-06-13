import 'package:flutter/material.dart';
import 'package:shop/screens/pages/main_screen.dart';
import 'package:shop/screens/signup_screen.dart';
import '../widgets/fields/text_field.dart';

// ignore: unused_import
import '../utils/routes/routs.dart';
import '../utils/styles.dart';
import '../widgets/buttons/arrow_button.dart';

class OtpVerification extends StatelessWidget {
  final String userName;
  const OtpVerification({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
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
            "Enter the verification code.",
            style: Styles.headLineStyle2,
          ),
          const SizedBox(height: 10),
          Text(
            "We will text you on 911331xxxx",
            style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          CustomTextFieldForOTP(
            hintText: "_ _ _ _",
            isNumber: true,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Resend Code",
                style:
                    Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Change Number",
                style:
                    Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          ArrowButton(
            buttonColor: secondary,
            onTap: () {
              Navigator.push(
                context,
                FadePageRoute(
                  builder: (context) => MainScreen(
                    userName: userName,
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
                "Are you a new user? ",
                style: Styles.headLineStyle3,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    FadePageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Text(
                  "Sign up",
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
