import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme = ThemeData(
    scaffoldBackgroundColor: kPrimaryColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 27,
      ),
      backgroundColor: kPrimaryColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: kPrimaryColor),
    ));
