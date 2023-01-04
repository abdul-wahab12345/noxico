import 'package:flutter/material.dart';

import 'package:noxico/Screens/instruct.dart';
import 'package:noxico/Screens/intro.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';

class TermsScreen extends StatefulWidget {
  static const routeName = '/terms';
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all( getProportionateScreenHeight(19)),
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
                height: getProportionateScreenHeight(25),
              ),
              Center(
                child: Text(
                  "TERMS OF USE",
                  style: headStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(28),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: getProportionateScreenWidth(296),
                  height: getProportionateScreenHeight(519),
                  child: Text(
                    "This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions.",
                    style: bodyStyle.copyWith(fontSize: 17),
                    // overflow: TextOverflow.fade,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(InstructScreen.routeName);
                  },
                  splashColor: primaryColor.withOpacity(0.5),
                  child: Container(
                    height: getProportionateScreenHeight(66),
                    width: getProportionateScreenWidth(270),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: primaryColor, width: 2),
                      color: Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "I agree",
                      style: bodyStyle.copyWith(
                          color: const Color.fromRGBO(35, 35, 35, 1)),
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
}
