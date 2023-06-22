import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splashview.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashview(),
    );
  }
}
