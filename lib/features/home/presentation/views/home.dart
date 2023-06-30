import 'package:bookshop/core/utiliz/styles.dart';
import 'package:bookshop/features/home/presentation/views/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utiliz/routes.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 25,
                ),
                onPressed: () =>
                    GoRouter.of(context).push(AppRouter.kSearchPage)),
          )
        ],
        title: Text("BookShop", style: Styles.large),
      ),
      body: const HomePageBody(),
    );
  }
}
