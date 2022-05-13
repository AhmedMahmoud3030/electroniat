import 'dart:core';

import 'package:electroniat/constants.dart';
import 'package:electroniat/widgets/details/details_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key key,
  }) : super(key: key);
  static const routeName = '/detail-screen';

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final index = arguments['selectedProductIndex'];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(index),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      title: Text(
        'رجوع',
        style: GoogleFonts.almarai(
          textStyle: Theme.of(context).textTheme.bodyText1,
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
