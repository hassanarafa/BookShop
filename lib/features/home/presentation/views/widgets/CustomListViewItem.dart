import 'package:flutter/cupertino.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imagepath});
  final String? imagepath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
          aspectRatio: 0.7,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(imagepath!))),
            ),
          )),
    );
  }
}
