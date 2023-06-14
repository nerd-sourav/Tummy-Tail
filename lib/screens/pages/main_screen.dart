import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop/screens/food%20screens/fine_dining.dart';
import 'package:shop/screens/food%20screens/foods_screen.dart';
import 'package:shop/screens/food%20screens/liquors_screen.dart';
import 'package:shop/screens/food%20screens/profile_screen.dart';
import 'package:shop/utils/styles.dart';
import 'package:shop/widgets/cards/categories_card.dart';
import 'package:shop/widgets/cards/food_card.dart';
import 'package:shop/widgets/cards/restaurants_card.dart';

import '../../utils/routes/routs.dart';

class MainScreen extends StatefulWidget {
  String userName;
  MainScreen({super.key, required this.userName});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List _items = [];
  List _restaurants = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/categories.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["categories"];
    });
  }

  Future<void> readRestaurants() async {
    final String response =
        await rootBundle.loadString('assets/restaurants.json');
    final data = await json.decode(response);
    setState(() {
      _restaurants = data["restaurants"];
    });
  }

  @override
  void initState() {
    super.initState();

    readJson();
    readRestaurants();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 40,
            bottom: 20,
            left: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Text(
                      "Let's Enjoy!",
                      style: Styles.headLineStyle1,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          SlidePageRoute(
                            builder: (context) => ProfileScreen(
                              userName: widget.userName,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.menu_open,
                        color: Colors.black54,
                        size: 50,
                      )),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 70),
              //   child: Text(
              //     "Let's Enjoy!",
              //     style: Styles.headLineStyle1,
              //   ),
              // ),
              Text(
                "Food & Drinks",
                style: Styles.headLineStyle1.copyWith(
                  color: primary,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: size.width / 1.2,
                height: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(children: [
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.search,
                    size: 25,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "Search",
                    style: Styles.textStyle
                        .copyWith(color: secondary, fontSize: 20),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              Text(
                "Explore categories",
                style: Styles.headLineStyle3.copyWith(color: secondary),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CategoryCard(
                            imageUrl: _items[0]['imageUrl'],
                            title: _items[0]['title'],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FoodScreen(list: _items),
                                ),
                              );
                            },
                          ),
                          CategoryCard(
                            imageUrl: _items[2]['imageUrl'],
                            title: _items[2]['title'],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FineDining(list: _items),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CategoryCard(
                            imageUrl: _items[1]['imageUrl'],
                            title: _items[1]['title'],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LiquorScreen(list: _items),
                                ),
                              );
                            },
                          ),
                          CategoryCard(
                            imageUrl: _items[3]['imageUrl'],
                            title: _items[3]['title'],
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LiquorScreen(list: _items),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),

                  // Row(
                  //   children: List.generate(
                  //     2,
                  //     (index) => CategoryCard(
                  //       imageUrl: _items[index + 2]['imageUrl'],
                  //       title: _items[index + 2]['title'],
                  //       onTap: () {
                  //         index == 0
                  //             ? Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       FineDining(list: _items),
                  //                 ),
                  //               )
                  //             : Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       LiquorScreen(list: _items),
                  //                 ),
                  //               );
                  //       },
                  //     ),
                  //   ),
                  // ),
                  Text(
                    "Popular foods",
                    style: Styles.headLineStyle3.copyWith(color: secondary),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        primary: false,
                        shrinkWrap: true,
                        itemCount: _items[0]['foods'].length,
                        itemBuilder: (BuildContext context, index) {
                          return FoodCard(
                            name: _items[0]['foods'][index]['name'],
                            imageUrl: _items[0]['foods'][index]['imageUrl'],
                            price: _items[0]['foods'][index]['price'],
                            description: _items[0]['foods'][index]
                                ['description'],
                            rating: _items[0]['foods'][index]['rating'],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 350,
                    child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        primary: false,
                        shrinkWrap: true,
                        itemCount: _restaurants[0].length,
                        itemBuilder: (BuildContext context, index) {
                          return RestaurantCard(
                              name: _restaurants[index]['name'],
                              rating: _restaurants[index]['rating'],
                              reviews: _restaurants[index]['reviews'],
                              imageUrl: _restaurants[index]['image'],
                              location: _restaurants[index]['location']);
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// backgroundColor: Styles.bgColor,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 70),
//                   child: Text(
//                     "Let's Enjoy!",
//                     style: Styles.headLineStyle1,
//                   ),
//                 ),
//                 Text(
//                   "Food & Drinks",
//                   style: Styles.headLineStyle1.copyWith(
//                     color: primary,
//                     fontSize: 60,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Container(
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                   width: size.width / 1.2,
//                   height: 65,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Row(children: [
//                     const SizedBox(width: 20),
//                     const Icon(
//                       Icons.search,
//                       size: 25,
//                     ),
//                     const SizedBox(width: 20),
//                     Text(
//                       "Search",
//                       style: Styles.textStyle
//                           .copyWith(color: secondary, fontSize: 20),
//                     ),
//                   ]),
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   "Explore categories",
//                   style: Styles.headLineStyle3.copyWith(color: secondary),
//                 ),
//                 // Expanded(
//                 //   child: GridView.builder(
//                 //       gridDelegate:
//                 //           const SliverGridDelegateWithMaxCrossAxisExtent(
//                 //               maxCrossAxisExtent: 200,
//                 //               childAspectRatio: 3 / 2,
//                 //               crossAxisSpacing: 20,
//                 //               mainAxisSpacing: 20),
//                 //       itemCount: _items[0]['foods'].length,
//                 //       itemBuilder: (BuildContext ctx, index) {
//                 //         return CategoryCard(
//                 //           imageUrl: _items[index]['imageUrl'],
//                 //           title: _items[index]['title'],
//                 //           onTap: () {},
//                 //         );
//                 //       }),
//                 // ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Row(
//                       children: List.generate(
//                         2,
//                         (index) => CategoryCard(
//                           imageUrl: _items[index]['imageUrl'],
//                           title: _items[index]['title'],
//                           onTap: () {},
//                         ),
//                       ),
//                     ),
//                     Row(
//                       children: List.generate(
//                         2,
//                         (index) => CategoryCard(
//                           imageUrl: _items[index + 2]['imageUrl'],
//                           title: _items[index + 2]['title'],
//                           onTap: () {},
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Text(
//                   "Popular foods",
//                   style: Styles.headLineStyle3.copyWith(color: secondary),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                       // physics: NeverScrollableScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       primary: false,
//                       shrinkWrap: true,
//                       itemCount: _items[0]['foods'].length,
//                       itemBuilder: (BuildContext context, index) {
//                         return FoodCard();
//                       }),
//                 ),
//                 Expanded(
//                   child: ListView.builder(
//                       // physics: NeverScrollableScrollPhysics(),
//                       scrollDirection: Axis.horizontal,
//                       primary: false,
//                       shrinkWrap: true,
//                       itemCount: _items[0]['foods'].length,
//                       itemBuilder: (BuildContext context, index) {
//                         return FoodCard();
//                       }),
//                 )
//               ],
//             ),
//           ),
//         ),