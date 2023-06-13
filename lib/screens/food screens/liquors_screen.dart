import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/widgets/cards/drinks_card.dart';

import '../../utils/styles.dart';

// ignore: must_be_immutable
class LiquorScreen extends StatefulWidget {
  List<dynamic> list = [];
  LiquorScreen({super.key, required this.list});

  @override
  State<LiquorScreen> createState() => _LiquorScreenState();
}

class _LiquorScreenState extends State<LiquorScreen> {
  List _drinkList = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/drinks.json');
    final data = await json.decode(response);
    setState(() {
      _drinkList = data["categories"];
      print(
        _drinkList[0],
      );
    });
  }

  @override
  void initState() {
    super.initState();

    readJson();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.list[1]['imageUrl'].toString(),
                    ),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Liquors",
                        style: Styles.headLineStyle1
                            .copyWith(fontSize: 90, color: Colors.white),
                      ),
                      Text(
                        "Enjoy  delicious Drinks",
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Recommended for you",
                        style: Styles.headLineStyle3.copyWith(
                            color: secondary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 330,
                      child: Center(
                        child: ListView.builder(
                            // physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, index) {
                              return DrinksCard(
                                  name: _drinkList[0]['items'][index]['name'],
                                  imageUrl: _drinkList[0]['items'][index]
                                      ['image'],
                                  price: _drinkList[0]['items'][index]
                                      ['price']);
                            }),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 330,
                        child: ListView.builder(
                            // physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            primary: false,
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (BuildContext context, index) {
                              return DrinksCard(
                                  name: _drinkList[0]['items'][index + 2]
                                      ['name'],
                                  imageUrl: _drinkList[0]['items'][index + 2]
                                      ['image'],
                                  price: _drinkList[0]['items'][index + 2]
                                      ['price']);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "MockTails",
                        style: Styles.headLineStyle3.copyWith(
                            color: secondary, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          primary: false,
                          shrinkWrap: true,
                          itemCount: _drinkList[0]['items'].length,
                          itemBuilder: (BuildContext context, index) {
                            return MockTailCard(
                                name: _drinkList[1]['items'][index]['name'],
                                imageUrl: _drinkList[1]['items'][index]
                                    ['image'],
                                price: _drinkList[1]['items'][index]['price']);
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
