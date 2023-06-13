import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

class SmallButton1 extends StatelessWidget {
  final Function()? onTap;
  const SmallButton1({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height / 20,
        width: size.width / 3.5,
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(80),
        ),
        child: Center(
          child: Text(
            "Log in",
            style: Styles.headLineStyle4.copyWith(
              fontWeight: FontWeight.bold,
              color: secondary,
            ),
          ),
        ),
      ),
    );
  }
}

class SmallButton2 extends StatelessWidget {
  final Function()? onTap;
  const SmallButton2({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height / 20,
        width: size.width / 3.5,
        decoration: BoxDecoration(
          border: Border.all(
            color: Styles.primaryColor, // Choose your desired border color
            width: 2.0, // Choose the border width
          ),
          borderRadius: BorderRadius.circular(80),
        ),
        child: Center(
            child: Text(
          "Sign up",
          style: Styles.headLineStyle4.copyWith(
            fontWeight: FontWeight.bold,
            color: secondary,
          ),
        )),
      ),
    );
  }
}
