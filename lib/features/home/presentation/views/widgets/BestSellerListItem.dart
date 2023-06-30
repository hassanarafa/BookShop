import 'package:bookshop/core/utiliz/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utiliz/styles.dart';
import 'CustomListViewItem.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });
  final String image, text1, text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.imagePATH = image;
        AppRouter.title = text1;
        AppRouter.subtitle = text2;
        GoRouter.of(context).push(AppRouter.kBookDetail);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 160,
          child: Row(
            children: [
              CustomListViewItem(
                imagepath: image,
                aspect: 2.5 / 4,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: Styles.large,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      text2,
                      style: Styles.small,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: Styles.small,
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
                          style: Styles.small,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
