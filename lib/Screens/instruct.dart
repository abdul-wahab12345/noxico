import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noxico/Screens/analyzing.dart';
import 'package:noxico/Screens/intro.dart';

import 'package:noxico/constant.dart';
import 'package:noxico/size_config.dart';
import 'package:permission_handler/permission_handler.dart';

class InstructScreen extends StatefulWidget {
  static const routeName = '/instruct';
  const InstructScreen({super.key});

  @override
  State<InstructScreen> createState() => _InstructScreenState();
}

class _InstructScreenState extends State<InstructScreen> {
  _camera() async {
    var status = await Permission.camera.request().isDenied;
    if (status) {
      return;
    }
    final XFile? photo =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (photo == null) {
      return;
    }
    Navigator.of(context).pushNamed(AnalyzingScreen.routeName);
  }

  _gallery() async {
    final XFile? photo =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (photo == null) {
      return;
    }
    Navigator.of(context).pushNamed(AnalyzingScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(19),
              vertical: getProportionateScreenHeight(19)),
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
                height: getProportionateScreenHeight(40),
              ),
              Image.asset(
                'assets/imgs/instructions.png',
                height: getProportionateScreenHeight(337),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: getProportionateScreenHeight(28),
              ),
              Text(
                "Upload a photo of the ingredients!",
                style: bodyStyle,
                textAlign: TextAlign.center,
              ),
              // SizedBox(
              //   height: getProportionateScreenHeight(28),
              // ),
              Spacer(),
              InkWell(
                onTap: _camera,
                splashColor: primaryColor.withOpacity(0.5),
                child: Image.asset(
                  "assets/imgs/camera_btn.png",
                  height: getProportionateScreenHeight(130),
                  width: getProportionateScreenHeight(130),
                ),
              ),
              Spacer(),
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: _gallery,
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
                      "Choose from Photo Library",
                      style: bodyStyle.copyWith(
                          color: const Color.fromRGBO(35, 35, 35, 1)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
