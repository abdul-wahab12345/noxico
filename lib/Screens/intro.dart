import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:noxico/Screens/terms.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = '/intro';
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(15)),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(116),
              ),
              SvgPicture.asset(
                "assets/svg/logo.svg",
                height: getProportionateScreenHeight(145),
                width: getProportionateScreenHeight(145),
              ),
              SizedBox(
                height: getProportionateScreenHeight(38),
              ),
              Center(
                child: SvgPicture.asset("assets/svg/label.svg"),
              ),
              SizedBox(
                height: getProportionateScreenHeight(27.3),
              ),
              Container(
                alignment: Alignment.center,
                width: getProportionateScreenWidth(294),
               
                child: Text(
                  "Avoid chemicals and toxins in food, cosmetics and cleaning products.",
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Material(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(TermsScreen.routeName);
                  },
                  splashColor: primaryColor.withOpacity(0.5),
                  child: Container(
                    height: getProportionateScreenHeight(66),
                    width: getProportionateScreenWidth(270),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor, width: 0),
                      color: Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Get Started",
                      style: bodyStyle.copyWith(
                          color: const Color.fromRGBO(35, 35, 35, 1)),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: getProportionateScreenHeight(5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
