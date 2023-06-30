import 'package:flutter/cupertino.dart';

import '../../../../../core/utiliz/styles.dart';
import 'CustomTextFormField.dart';
import 'SearchListViewItem.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(),
        const SizedBox(height: 5),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Search Part",
                  style: Styles.medium,
                ),
              ),
            )),
        const Expanded(child: SearchListViewItem())
      ],
    );
  }
}
