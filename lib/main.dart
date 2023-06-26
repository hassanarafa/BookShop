import 'package:bookshop/core/utiliz/routes.dart';
import 'package:bookshop/rhemedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
