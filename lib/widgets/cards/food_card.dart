import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Column(
      // alignment: Alignment.bottomCenter,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Styles.bgColor,
            borderRadius: BorderRadius.circular(45),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [],
          ),
          height: 230,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 10),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
