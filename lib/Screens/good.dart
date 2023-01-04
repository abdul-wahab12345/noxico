import 'package:flutter/material.dart';
import 'package:noxico/Screens/intro.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';

class GoodResultScreen extends StatefulWidget {
  static const routeName = '/good';
  const GoodResultScreen({super.key});

  @override
  State<GoodResultScreen> createState() => _GoodResultScreenState();
}

class _GoodResultScreenState extends State<GoodResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(19)),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, IntroScreen.routeName, (route) => false);
                  },
                  child: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(90),
              ),
              Image.asset(
                'assets/imgs/thumbs_up.png',
                height: getProportionateScreenHeight(149),
                width: getProportionateScreenHeight(149),
              ),
              SizedBox(
                height: getProportionateScreenHeight(52),
              ),
              const Text(
                "Seems alright!",
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 0.27,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(35, 35, 35, 1),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(19),
              ),
              Container(
                alignment: Alignment.center,
                width: getProportionateScreenWidth(282),
                child: Text(
                  "We didn’t find a match in our database with known harmful ingredients.",
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Material(
                color: const Color.fromRGBO(60, 59, 56, 1),
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, IntroScreen.routeName, (route) => false);
                  },
                  splashColor: primaryColor.withOpacity(0.5),
                  child: Container(
                    height: getProportionateScreenHeight(66),
                    width: getProportionateScreenWidth(314),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(60, 59, 56, 1),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Done",
                      style: bodyStyle.copyWith(
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
