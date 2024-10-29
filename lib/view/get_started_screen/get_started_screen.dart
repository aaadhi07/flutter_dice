import 'package:flutter/material.dart';
import 'package:flutter_dice/utlits/image_const.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(ImageConst.GETSTRTSCRN))
        ),
        child: Column(
          children: [
            Container(

            )
          ],
        ),
      ),
    );
  }
}