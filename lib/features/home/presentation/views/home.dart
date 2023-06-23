import 'package:bookshop/features/home/presentation/views/widgets/home_page_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(17),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          )
        ],
        title: Text("BookShop", style: GoogleFonts.acme()),
      ),
      body: const HomePageBody(),
    );
  }
}