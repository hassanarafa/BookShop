import 'package:bookshop/core/utiliz/routes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiliz/styles.dart';
import 'CustomListViewItem.dart';
import 'buttonaction.dart';
import 'listviewbuild.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(17),
            child: Icon(
              Icons.shopping_cart_checkout,
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: CustomListViewItem(
                      aspect: 3 / 4,
                      imagepath: AppRouter.imagePATH,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(AppRouter.title, style: Styles.large),
                  const SizedBox(height: 15),
                  Text(AppRouter.subtitle, style: Styles.small),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                  ),
                  const ButtonAction(),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "You Can Also Like",
                        style: Styles.small,
                      ),
                    ),
                  ),
                  const SizedBox(height: 270, child: ListViewBuild())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
