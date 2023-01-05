import 'package:flutter/material.dart';
import 'package:noxico/Screens/good.dart';
import 'package:noxico/Screens/intro.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';

class AnalyzingScreen extends StatefulWidget {
  static const routeName = '/analyzing';
  const AnalyzingScreen({super.key});

  @override
  State<AnalyzingScreen> createState() => _AnalyzingScreenState();
}

class _AnalyzingScreenState extends State<AnalyzingScreen> {
  bool isFirst = true;

  @override
  void didChangeDependencies() {
    if (isFirst) {
      Future.delayed(const Duration(seconds: 5)).then((value) async {
        Navigator.pushNamedAndRemoveUntil(
            context, GoodResultScreen.routeName, (route) => false);
        isFirst = false;
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(184),
            ),
            Image.asset(
              'assets/imgs/loader.gif',
              height: height(context) * 20,
              width: height(context) * 20,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            Text(
              "ANALYZING INGREDIENTS...",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2.07,
                fontWeight: FontWeight.w400,
                color: contentColor,
              ),
            ),
            const Spacer(),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, IntroScreen.routeName, (route) => false);
                },
                splashColor: primaryColor.withOpacity(0.5),
                child: Container(
                  height: getProportionateScreenHeight(60),
                  width: getProportionateScreenWidth(314),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromRGBO(220, 220, 220, 1),
                        width: 1),
                    color: Colors.transparent,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Cancel",
                    style: bodyStyle.copyWith(
                        color: const Color.fromRGBO(35, 35, 35, 1)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
          ],
        ),
      ),
    );
  }
}
