import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop/utils/styles.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double rating;
  final int reviews;
  final String location;
  const RestaurantCard(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.reviews,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 350,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 38,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      rating.toString(),
                      style: Styles.headLineStyle3
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.star,
                      color: primary,
                      size: 20,
                    ),
                    Text("( " + reviews.toString() + '+) ')
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Styles.textStyle.copyWith(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      location,
                      style: Styles.textStyle.copyWith(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
