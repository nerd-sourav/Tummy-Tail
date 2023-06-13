import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/home_screen.dart';
import 'package:shop/screens/login_screen.dart';
import 'package:shop/screens/pages/main_screen.dart';
import 'package:shop/utils/routes/routs.dart';

void main() {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
          channelKey: 'test_channel',
          channelName: 'Test Channel',
          channelDescription: 'Testing')
    ],
    debug: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop UI',
      theme: ThemeData(
        fontFamily: 'Montserrat', // <-- 1
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Montserrat',
            ),

        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}
