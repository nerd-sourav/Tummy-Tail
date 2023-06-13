import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/pages/payment_screen.dart';
import 'package:shop/widgets/buttons/large_buttons.dart';
import 'package:shop/widgets/cards/logo_card.dart';

import '../../utils/styles.dart';

// ignore: must_be_immutable
class FineDining extends StatelessWidget {
  List<dynamic> list = [];
  FineDining({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    list[2]['imageUrl'].toString(),
                  ),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fine Dining",
                      style: Styles.headLineStyle1
                          .copyWith(fontSize: 80, color: Colors.white),
                    ),
                    Text(
                      "Enjoy  with your family",
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
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Book Your Table",
                style: Styles.headLineStyle1
                    .copyWith(color: secondary, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Where you want to eat?",
                style: Styles.headLineStyle3
                    .copyWith(color: secondary, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoCard(iconData: Icons.houseboat_outlined),
                const SizedBox(width: 30),
                LogoCard(iconData: Icons.beach_access_outlined),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Select number of person",
                style: Styles.headLineStyle3
                    .copyWith(color: secondary, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LogoCard(iconData: Icons.man_sharp),
                const SizedBox(width: 30),
                LogoCard(iconData: CupertinoIcons.person_2_alt),
                const SizedBox(width: 30),
                LogoCard(iconData: Icons.family_restroom_sharp),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "How many Seats?",
                style: Styles.headLineStyle3
                    .copyWith(color: secondary, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  4,
                  (index) => Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Text(
                            index == 3 ? ("More") : (index + 2).toString(),
                            style: Styles.headLineStyle3,
                          ),
                        ),
                      )),
            ),
            LargeButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                },
                text: "Book a table"),
            const SizedBox(
              height: 20,
            )
          ]),
    );
  }
}
