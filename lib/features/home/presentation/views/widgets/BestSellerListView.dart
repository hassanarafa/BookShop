import 'package:bookshop/core/utiliz/assets.dart';
import 'package:flutter/cupertino.dart';

import 'BestSellerListItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return BestSellerListItem(
          image: AssetData.list[index],
          text1: AssetData.list1[index],
          text2: AssetData.list2[index],
        );
      },
    );
  }
}
