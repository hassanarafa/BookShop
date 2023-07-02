import 'package:bookshop/core/utiliz/routes.dart';
import 'package:bookshop/core/utiliz/servicelocator.dart';
import 'package:bookshop/rhemedata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/data/repo/homerepo_implementation.dart';
import 'features/home/presentation/manager/featured_book_cubit/featured_book_cubit.dart';
import 'features/home/presentation/manager/newest_book_cubit/newest_book_cubit.dart';

void main() {
  setup();
  runApp(const BookShop());
}

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(getIt.get<Homerepoimp>()),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<Homerepoimp>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: theme,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
