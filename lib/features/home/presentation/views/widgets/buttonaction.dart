import 'package:flutter/material.dart';

import 'custombutton.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            textcolor: Colors.black,
            backcolor: Colors.white,
            bottomLeft: 15,
            text: "19.99 €",
            bottomRight: 0,
            topLeft: 15,
            topRight: 0,
          )),
          Expanded(
              child: CustomButton(
            textcolor: Colors.white,
            backcolor: Colors.deepOrange,
            bottomLeft: 0,
            text: "Free Perview",
            bottomRight: 15,
            topLeft: 0,
            topRight: 15,
          )),
        ],
      ),
    );
  }
}
