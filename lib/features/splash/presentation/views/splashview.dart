import 'package:bookshop/features/splash/presentation/views/widgets/splashviewBody.dart';
import 'package:flutter/material.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 0), body: const SplashViewBody());
  }
}
