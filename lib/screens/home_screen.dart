// ignore_for_file: non_constant_identifier_names

import 'package:electroniat/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar HomeAppBar() => AppBar(
        titleTextStyle: GoogleFonts.getFont('Almarai'),
        elevation: 0,
        backgroundColor: Colors.transparent,

        //backgroundColor: kPrimaryColor,
        title: const Text(
          'الكترونيات',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      );
}
