import 'package:flutter/material.dart';
import 'package:noxico/Screens/intro.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';

class BadResultScreen extends StatefulWidget {
  static const routeName = '/bad';
  const BadResultScreen({super.key});

  @override
  State<BadResultScreen> createState() => _BadResultScreenState();
}

class _BadResultScreenState extends State<BadResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap:  () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, IntroScreen.routeName, (route) => false);
                    },
                  child: const Icon(
                    Icons.close,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(49),
              ),
               Image.asset(
                'assets/imgs/thumbs_down.png',
                height: getProportionateScreenHeight(149),
                width: getProportionateScreenHeight(149),
              ),
              Expanded(
                // height: getProportionateScreenHeight(532),
               
                child: ListView(
                  children: [
                    buildCons(
                  "Trientine hydrochloride",
                  "The U.S. Environmental Protection Agency has identified this chemical as a possible human carcinogen.",
                ),
                buildCons(
                  "1,3Propane sultone",
                  "Listed on the 14th Report on Carcinogens as a reasonably anticipated human carcinogen.",
                ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
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
                      border: Border.all(
                        color: Color.fromRGBO(60, 59, 56, 1),
                        width: 2
                      ),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCons(String title, String content) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(48),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            letterSpacing: 0.96,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(230, 61, 61, 1),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Container(
          alignment: Alignment.center,
          width: getProportionateScreenWidth(296),
          child: Text(
            content,
            style: bodyStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
