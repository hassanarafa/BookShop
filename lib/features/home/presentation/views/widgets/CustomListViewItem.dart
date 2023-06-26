import 'package:flutter/cupertino.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem(
      {super.key, required this.imagepath, required this.aspect});
  final String? imagepath;
  final double? aspect;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
          aspectRatio: aspect!,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(imagepath!))),
            ),
          )),
    );
  }
}
