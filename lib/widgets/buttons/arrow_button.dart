import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

// ignore: must_be_immutable
class ArrowButton extends StatelessWidget {
  Color buttonColor;
  Function()? onTap;

  ArrowButton({super.key, required this.buttonColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: buttonColor,
            ),
            child: Icon(
              Icons.arrow_forward_rounded,
              color: buttonColor == primary ? Colors.black : Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class SmallArrowButton extends StatelessWidget {
  Color buttonColor;
  Function()? onTap;

  SmallArrowButton({super.key, required this.buttonColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
