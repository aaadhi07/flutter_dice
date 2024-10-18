

import 'package:flutter/material.dart';
import 'package:flutter_dice/utlits/color_const.dart';
import 'package:flutter_dice/utlits/image_const.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Text("1",style: TextStyle(
               fontWeight: FontWeight.w600,
               fontSize: 18,
                  color: ColorConst.BLACK,
                    ),),
                    Text("/3",
                    style: TextStyle(
                      fontSize: 18,
                color: ColorConst.GREYSHADE2,
                fontWeight: FontWeight.w600
          
                    ),)
            ],
          ),
        ),
      
      actions: [
        TextButton(onPressed: () {}, 
        child: Text("skip"),
        style: ButtonStyle(),)
      ],),
      body: Column(
        children: [
          SizedBox(height: 110,),
          Center(child: Column(children: [
            Image.asset(ImageConst.LOGINPAGE1, 
            height: 300,width: 300,),

            SizedBox(height: 15,),

            Text("Choose Products",style: TextStyle(
              fontWeight: FontWeight.w900,fontSize: 24,
            color: ColorConst.BLACK,
             ),),
            Padding(
              padding: const EdgeInsets.only(left: 17,right: 18),
              child: Text(
                textAlign: TextAlign.center,
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
              style: TextStyle(
                fontSize: 14,letterSpacing: 2,
              color: ColorConst.GREYSHADE1,
              fontWeight: FontWeight.w600),),
            )
          ],),),
          BottomAppBar(child: Text("Next",
          ),)
        ],
      ),
    );
  }
}