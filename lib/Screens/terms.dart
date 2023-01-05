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
      backgroundColor: const Color.fromRGBO(250, 246, 241, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20),
              vertical: getProportionateScreenHeight(20)),
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
                height: getProportionateScreenHeight(20),
              ),
              Center(
                child: Text(
                  "TERMS OF USE",
                  style: headStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,

                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  // width: getProportionateScreenWidth(296),
                  height: getProportionateScreenHeight(500),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Text(
                          "This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions.This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This ap This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions. This app lets you upload a photo and get predictions.",
                          style: bodyStyle.copyWith(
                              fontSize: 17, letterSpacing: 0.2),
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      FadeEndListView()
                    ],
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
                    height: getProportionateScreenHeight(60),
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
              ),
              SizedBox(
                height: height(context) * 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FadeEndListView extends StatelessWidget {
  const FadeEndListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 1.0],
            colors: [
              Theme.of(context).scaffoldBackgroundColor.withOpacity(0.0),
              Theme.of(context).scaffoldBackgroundColor,
            ],
          ),
        ),
      ),
    );
  }
}
