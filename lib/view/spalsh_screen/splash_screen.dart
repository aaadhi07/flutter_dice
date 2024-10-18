import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dice/utlits/color_const.dart';
import 'package:flutter_dice/utlits/image_const.dart';
import 'package:flutter_dice/view/onboarding_screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
       MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
       Container(
        child: 
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConst.MYLOGO,
            height: 100,
            width: 125,
            fit: BoxFit.fill,),
            SizedBox(width: 9,),
            Text("Stylish",
            style: GoogleFonts.libreCaslonText(
              color:ColorConst.PRIMARYCLR,
              fontSize: 40,
              fontWeight: FontWeight.bold
            )
            ),
          ],
        ),
      )),
    );
  }
}
