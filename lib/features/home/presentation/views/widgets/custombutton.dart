import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.topLeft,
      required this.bottomRight,
      required this.topRight,
      required this.bottomLeft,
      required this.text,
      required this.backcolor,
      required this.textcolor});
  final double topLeft, bottomRight, topRight, bottomLeft;
  final String text;
  final Color backcolor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(topLeft),
                      bottomRight: Radius.circular(bottomRight),
                      topRight: Radius.circular(topRight),
                      bottomLeft: Radius.circular(bottomLeft))),
              backgroundColor: backcolor),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          )),
    );
  }
}
