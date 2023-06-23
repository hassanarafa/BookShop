import 'package:flutter/cupertino.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imagepath});
  final String? imagepath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagepath!))),
          )),
    );
  }
}
