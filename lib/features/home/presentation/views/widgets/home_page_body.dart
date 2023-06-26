import 'package:bookshop/core/utiliz/styles.dart';
import 'package:flutter/material.dart';

import 'BestSellerListView.dart';
import 'listviewbuild.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListViewBuild(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Best Seller",
                style: Styles.style2,
              ),
            ),
            const BestSellerListView(),
          ],
        ))
      ],
    );
  }
}
