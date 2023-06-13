import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.transparent, // Set the background color to transparent
      appBar: AppBar(
        title: Text('Transparent Scaffold'),
      ),
      body: Stack(
        children: [
          // Background image or content
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blurred overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black
                  .withOpacity(0.5), // Adjust the opacity as desired
            ),
          ),
          // Main content
          Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
