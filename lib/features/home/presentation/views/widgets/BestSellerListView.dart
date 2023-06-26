import 'package:bookshop/core/utiliz/assets.dart';
import 'package:flutter/cupertino.dart';

import 'BestSellerListItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list1 = [
      "Jack Taylor",
      "Jack Reacher",
      "Hieronymus Bosch",
      "Bob Lee Swagger",
      "Ben Kincaid"
    ];
    List<String> list2 = [
      "Ken Bruen",
      "Lee Child",
      "Michael Connelly",
      "Stephen Hunter",
      "Willian Bernhardt"
    ];
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return BestSellerListItem(
          image: AssetData.list[index],
          text1: list1[index],
          text2: list2[index],
        );
      },
    );
  }
}
