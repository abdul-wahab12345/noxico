import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noxico/Screens/analyzing.dart';
import 'package:noxico/Screens/bad.dart';
import 'package:noxico/Screens/good.dart';
import 'package:noxico/Screens/instruct.dart';
import 'package:noxico/Screens/intro.dart';
import 'package:noxico/Screens/terms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(250, 246, 241, 1),
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const IntroScreen(),
      routes: {
        IntroScreen.routeName: (ctx) => const IntroScreen(),
        TermsScreen.routeName: (ctx) => const TermsScreen(),
        InstructScreen.routeName: (ctx) => const InstructScreen(),
        GoodResultScreen.routeName: (ctx) => const GoodResultScreen(),
        BadResultScreen.routeName: (ctx) => const BadResultScreen(),
        AnalyzingScreen.routeName: (ctx) => const AnalyzingScreen(),
      },
    );
  }
}
