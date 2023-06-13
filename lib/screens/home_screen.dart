import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/login_screen.dart';
import 'package:shop/screens/signup_screen.dart';
import 'package:shop/utils/routes/routs.dart';
import 'package:shop/utils/styles.dart';
import 'package:shop/widgets/buttons/arrow_button.dart';
import 'package:shop/widgets/buttons/small_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      } else {
        print('allowed');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              "Welcome to",
              style:
                  Styles.headLineStyle3.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Tummy Tail!",
              style: Styles.headLineStyle1,
            ),
            const Spacer(),
            const SizedBox(
              height: 10,
            ),
            Container(
              // color: Styles.primaryColor,
              width: double.infinity,
              height: 260,
              child: Image.asset(
                'assets/images/steak.png',
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallButton1(onTap: () {
                  Navigator.push(
                    context,
                    FadePageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                }),
                SmallButton2(onTap: () {
                  Navigator.push(
                    context,
                    FadePageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                }),
              ],
            ),
            const Spacer(),
            ArrowButton(
              buttonColor: primary,
              onTap: () {
                Navigator.push(
                  context,
                  FadePageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
