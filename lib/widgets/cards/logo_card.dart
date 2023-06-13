import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

// ignore: must_be_immutable
class LogoCard extends StatefulWidget {
  IconData iconData;
  LogoCard({super.key, required this.iconData});

  @override
  State<LogoCard> createState() => _LogoCardState();
}

class _LogoCardState extends State<LogoCard> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      // child: Container(
      //   width: 200,
      //   height: 200,
      //   color: isTapped ? Colors.grey : Colors.blue,
      // ),

      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 20,
                offset: Offset(0, 2), // Offset in the x and y direction
              ),
            ],
            color: isTapped
                ? Color.fromARGB(255, 204, 204, 204).withOpacity(0.5)
                : Colors.grey[100],
            borderRadius: BorderRadius.circular(16)),
        width: 100,
        height: 100,
        child: Icon(
          widget.iconData,
          size: 50,
          color: primary,
        ),
      ),
    );
  }
}
