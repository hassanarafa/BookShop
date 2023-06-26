import 'package:flutter/cupertino.dart';

import 'CustomListViewItem.dart';

class ListViewBuild extends StatelessWidget {
  const ListViewBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "assets/images/9781504074360.jpg",
      "assets/images/9781504074377.jpg",
      "assets/images/9781504074384.jpg",
      "assets/images/9781504074445.jpg",
      "assets/images/9781504084666.jpg"
    ];
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
              imagepath: list[index],
              aspect: 0.7,
            );
          },
        ),
      ),
    );
  }
}
