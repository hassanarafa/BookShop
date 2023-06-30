import 'package:flutter/cupertino.dart';

import '../../../../../core/utiliz/assets.dart';
import '../../../../home/presentation/views/widgets/BestSellerListItem.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
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
