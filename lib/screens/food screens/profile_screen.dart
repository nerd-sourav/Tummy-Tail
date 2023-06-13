import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

import '../../widgets/cards/line_chart.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;
  const ProfileScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: Styles.headLineStyle2.copyWith(fontSize: 40),
              ),
              Text(
                "$userName!",
                style: Styles.headLineStyle1
                    .copyWith(color: primary, fontSize: 60),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: size.height / 5.5,
                    width: size.height / 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primary.withOpacity(0.3)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.group,
                            color: primary,
                            size: size.height / 15,
                          ),
                          Text(
                            'Total staff present today',
                            style: Styles.headLineStyle4,
                          ),
                          Text(
                            '14/16',
                            style: Styles.headLineStyle4,
                          )
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    height: size.height / 5.5,
                    width: size.height / 6,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 129, 124, 124)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset:
                                Offset(0, 2), // Offset in the x and y direction
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            CupertinoIcons.square_list,
                            color: primary,
                            size: size.height / 20,
                          ),
                          Text(
                            'Bill Pending Payment',
                            style: Styles.headLineStyle4,
                          ),
                          Text(
                            '6',
                            style: Styles.headLineStyle4,
                          )
                        ]),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: size.height / 2.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 129, 124, 124).withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 2), // Offset in the x and y direction
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Statistics",
                        style: Styles.headLineStyle3,
                      ),
                      Text(
                        "Customer feedback",
                        style: Styles.headLineStyle2.copyWith(color: primary),
                      ),
                      Divider(),
                      LineChartSample2(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
