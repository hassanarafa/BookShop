import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:bookshop/core/utiliz/assets.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/home.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // late AnimationController animationController;
  // late Animation slidingAnimation;
  @override
  void initState() {
    // animationController =
    //     AnimationController(vsync: this, duration: const Duration(minutes: 1));
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Homepage())));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(width: 200, height: 200, child: Image.asset(AssetData.logo)),
        Text(
          "BookShop",
          style: GoogleFonts.acme(fontSize: 35),
        )
      ]),
    );
  }
}
