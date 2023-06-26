import 'package:flutter/material.dart';

import '../../../../../core/utiliz/styles.dart';
import 'CustomListViewItem.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem(
      {super.key, required this.image, this.text1, this.text2, this.text3});
  final String? image, text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 160,
        child: Row(
          children: [
            CustomListViewItem(
              imagepath: image!,
              aspect: 2.5 / 4,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1!,
                    style: Styles.style2,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    text2!,
                    style: Styles.style2,
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99 €",
                        style: Styles.style2,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 35,
                      ),
                      Text(
                        "4.8 (2390)",
                        style: Styles.style2,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
