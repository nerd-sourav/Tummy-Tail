import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const LargeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: size.height / 20,
        width: size.width / 1.5,
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(80),
        ),
        child: Center(
          child: Text(
            text,
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
