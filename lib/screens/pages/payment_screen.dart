import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:shop/utils/styles.dart';
import 'package:shop/widgets/buttons/arrow_button.dart';
import 'package:shop/widgets/buttons/large_buttons.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    // String? selectedOption;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SmallArrowButton(buttonColor: secondary, onTap: null),
                    Spacer(),
                    Text(
                      "Payment Method",
                      style: Styles.headLineStyle2,
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "Credit & Debit Cards",
                  style: Styles.headLineStyle2.copyWith(color: secondary),
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                // padding: EdgeInsets.all(20),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 2), // Offset in the x and y direction
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/mastercard.svg',
                          width: 45,
                          height: 45,
                        ),
                        SvgPicture.asset(
                          'assets/images/visa.svg',
                          width: 45,
                          height: 45,
                        ),
                        SvgPicture.asset(
                          'assets/images/rupay.svg',
                          width: 45,
                          height: 45,
                        ),

                        // Spacer(),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HDFC Bank **** **** **** 3493",
                          style: Styles.headLineStyle3,
                        ),
                        Text(
                          "AXIS Bank **** **** **** 4452",
                          style: Styles.headLineStyle3,
                        ),
                        Text(
                          "PNB Bank **** **** **** 1226",
                          style: Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundCheckBox(
                          animationDuration: const Duration(milliseconds: 70),
                          checkedColor: primary,
                          size: 30,
                          onTap: (selected) {},
                        ),
                        RoundCheckBox(
                          animationDuration: const Duration(milliseconds: 70),
                          checkedColor: primary,
                          size: 30,
                          onTap: (selected) {},
                        ),
                        RoundCheckBox(
                          animationDuration: const Duration(milliseconds: 70),
                          checkedColor: primary,
                          size: 30,
                          onTap: (selected) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                // padding: EdgeInsets.all(20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 2), // Offset in the x and y direction
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    Text(
                      "Add another card",
                      style: Styles.headLineStyle3,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "UPI",
                  style: Styles.headLineStyle2.copyWith(color: secondary),
                ),
              ),
              Container(
                margin: EdgeInsets.all(24),
                // padding: EdgeInsets.all(20),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 2), // Offset in the x and y direction
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/google-pay3.svg',
                              width: 45,
                              height: 45,
                            ),

                            Text(
                              "  Google Pay",
                              style: Styles.headLineStyle3,
                            ),

                            // Spacer(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/phone-pe.svg',
                              width: 45,
                              height: 45,
                            ),
                            Text(
                              " PhonePe",
                              style: Styles.headLineStyle3,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundCheckBox(
                          animationDuration: const Duration(milliseconds: 70),
                          checkedColor: primary,
                          size: 30,
                          onTap: (selected) {},
                        ),
                        RoundCheckBox(
                          animationDuration: const Duration(milliseconds: 70),
                          checkedColor: primary,
                          size: 30,
                          onTap: (selected) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payable Amount",
                        style: Styles.headLineStyle3
                            .copyWith(color: secondary, fontSize: 30),
                      ),
                      Text(
                        "₹ 200",
                        style: Styles.headLineStyle2
                            .copyWith(color: secondary, fontSize: 30),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Center(
                        child: LargeButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Success(),
                                ),
                              );
                            },
                            text: "Confirm Payment"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LottieBuilder.asset(
                frameRate: FrameRate(120),
                alignment: Alignment.center,
                fit: BoxFit.contain,
                "assets/Successful.json"),
            Column(
              children: [
                Text(
                  "Thank you !",
                  style: Styles.headLineStyle1.copyWith(fontSize: 60),
                ),
                SizedBox(height: 20),
                Text(
                  "Your transaction is successful.",
                  style: Styles.headLineStyle3.copyWith(fontSize: 30),
                ),
              ],
            ),
            LargeButton(
                onTap: () {
                  Navigator.pop(context);
                },
                text: "Done")
          ],
        ),
      ),
    );
  }
}
