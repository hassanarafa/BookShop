import 'package:bookshop/rhemedata.dart';
import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splashview.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Splashview(),
    );
  }
}
