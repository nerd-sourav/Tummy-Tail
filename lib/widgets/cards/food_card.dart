import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  final double rating;
  const FoodCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Column(
      // alignment: Alignment.bottomCenter,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Styles.bgColor,
            borderRadius: BorderRadius.circular(45),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(20),
          height: 290,
          width: 210,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(0, 10),
                blurRadius: 4,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                height: 140,
                clipBehavior: Clip.hardEdge,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(5, 4),
                      blurRadius: 8,
                      spreadRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                // textAlign: TextAlign.start,
                softWrap: true,
                name,
                style: Styles.headLineStyle2
                    .copyWith(color: secondary.withOpacity(0.7)),
              ),
              Text(
                softWrap: true,
                textAlign: TextAlign.center,
                description,
                style: Styles.textStyle.copyWith(color: secondary),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
