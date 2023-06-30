import 'package:bookshop/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailBody(),
    );
  }
}
