// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

import '../../widgets/cards/food_card.dart';

class FoodScreen extends StatelessWidget {
  List<dynamic> list = [];
  FoodScreen({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      list[0]['imageUrl'].toString(),
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Foods",
                        style: Styles.headLineStyle1
                            .copyWith(fontSize: 90, color: Colors.white),
                      ),
                      Text(
                        "Enjoy a delicious food",
                        style: Styles.textStyle.copyWith(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommended for you",
                      style: Styles.headLineStyle3.copyWith(
                          color: secondary, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          itemCount: list[0]['foods'].length,
                          itemBuilder: (BuildContext context, index) {
                            return FoodCard();
                          }),
                    ),
                    Text(
                      "Popular Foods",
                      style: Styles.headLineStyle3.copyWith(
                          color: secondary, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          itemCount: list[0]['foods'].length,
                          itemBuilder: (BuildContext context, index) {
                            return FoodCard();
                          }),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
