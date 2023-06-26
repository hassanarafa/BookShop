import 'package:bookshop/core/utiliz/assets.dart';
import 'package:flutter/cupertino.dart';

import 'CustomListViewItem.dart';

class ListViewBuild extends StatelessWidget {
  const ListViewBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return CustomListViewItem(
              imagepath: AssetData.list[index],
              aspect: 0.7,
            );
          },
        ),
      ),
    );
  }
}
