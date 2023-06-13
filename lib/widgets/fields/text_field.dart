import 'package:flutter/material.dart';
import 'package:shop/utils/styles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  IconData icon;
  bool isNumber;
  String hintText;
  TextEditingController textEditingController;
  CustomTextField({
    super.key,
    required this.icon,
    required this.isNumber,
    required this.hintText,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: size.width / 1.5,
      height: size.height / 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: size.height / 34,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextField(
                controller: textEditingController,
                keyboardType:
                    isNumber ? TextInputType.number : TextInputType.text,
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.w600), //
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none, // Remove border
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFieldForOTP extends StatelessWidget {
  final bool isNumber;
  final String hintText;
  const CustomTextFieldForOTP({
    super.key,
    required this.isNumber,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: size.width / 1.5,
      height: size.height / 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.max,

        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "__ __ __ __",
                style: Styles.headLineStyle2,
              ),
              // child:
              // TextField(
              //   maxLength: 4,
              //   keyboardType:
              //       isNumber ? TextInputType.number : TextInputType.text,
              //   style: const TextStyle(
              //     fontSize: 25,
              //     fontWeight: FontWeight.w600,
              //   ), //
              //   decoration: InputDecoration(
              //     hintText: hintText,
              //     border: InputBorder.none, // Remove border
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}

class OTPTextField extends StatefulWidget {
  const OTPTextField({super.key});

  @override
  _OTPTextFieldState createState() => _OTPTextFieldState();
}

class _OTPTextFieldState extends State<OTPTextField> {
  final List<FocusNode> _focusNodes = List<FocusNode>.generate(
    4,
    (index) => FocusNode(),
  );
  final List<TextEditingController> _controllers =
      List<TextEditingController>.generate(
    4,
    (index) => TextEditingController(),
  );

  @override
  void dispose() {
    for (int i = 0; i < 4; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Container(
          width: 60,
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            onChanged: (value) {
              if (value.isNotEmpty) {
                if (index < 3) {
                  _focusNodes[index + 1].requestFocus();
                } else {
                  _focusNodes[index].unfocus();
                }
              }
              String otp = '';
              for (int i = 0; i < 4; i++) {
                otp += _controllers[i].text;
              }
              if (otp.length == 4) {
                // Handle OTP verification or submission here
                print('OTP entered: $otp');
              }
            },
            decoration: InputDecoration(
              counterText: '', // Remove the character counter
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
