import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noxico/Screens/analyzing.dart';
import 'package:noxico/Screens/bad.dart';
import 'package:noxico/Screens/good.dart';
import 'package:noxico/Screens/instruct.dart';
import 'package:noxico/Screens/intro.dart';
import 'package:noxico/Screens/terms.dart';
import 'package:noxico/size_config.dart';

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
      home: IntroScreen(),
      routes: {
        IntroScreen.routeName: (ctx) => IntroScreen(),
        TermsScreen.routeName: (ctx) => TermsScreen(),
        InstructScreen.routeName: (ctx) => InstructScreen(),
        GoodResultScreen.routeName: (ctx) => GoodResultScreen(),
        BadResultScreen.routeName: (ctx) => BadResultScreen(),
        AnalyzingScreen.routeName: (ctx) => AnalyzingScreen(),
      },
    );
  }
}
