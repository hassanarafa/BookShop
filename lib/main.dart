import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'features/splash/presentation/views/splashview.dart';

void main() {
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          appBarTheme: const AppBarTheme(
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarIconBrightness: Brightness.dark,
                  statusBarColor: kPrimaryColor)),
          scaffoldBackgroundColor: kPrimaryColor),
      debugShowCheckedModeBanner: false,
      home: const Splashview(),
    );
  }
}
