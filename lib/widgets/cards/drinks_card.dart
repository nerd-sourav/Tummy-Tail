import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class DrinksCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  const DrinksCard(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      width: size.width / 2.5,
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 10,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25))),
            // clipBehavior: Clip.hardEdge,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 170,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const Spacer(),
                Text(
                  name,
                  style: Styles.headLineStyle3
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text('\$$price',
                    style: Styles.headLineStyle3.copyWith(fontSize: 20)),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}

class MockTailCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  const MockTailCard(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.price});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(30)),
      height: size.height / 4,
      width: size.width / 1.8,
      child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                name,
                style: Styles.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
