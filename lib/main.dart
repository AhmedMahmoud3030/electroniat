// ignore_for_file: deprecated_member_use

import 'package:electroniat/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      // Arabic RTL
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ar", "AE")],
      locale: const Locale("ar", "AE"),
      title: 'Electroniat',
      home: const HomeScreen(),
      routes: {
        DetailsScreen.routeName: (context) => const DetailsScreen(),
      },
    );
  }
}
