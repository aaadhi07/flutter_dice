import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dice/utlits/color_const.dart';
import 'package:flutter_dice/utlits/image_const.dart';
import 'package:flutter_dice/view/get_started_screen/get_started_screen.dart';
import 'package:flutter_dice/view/global_widgets/custom_input_field.dart';
import 'package:flutter_dice/view/home_screen/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 63,left: 32),
            child: Column(
             // /n
              children: [
                Text(
                  "Welcome\nBack!",style:GoogleFonts.montserrat(
                 fontWeight: FontWeight.bold,
                 fontSize: 36,
                 color: ColorConst.BLACK) ,),
                //  Text("Back!",style:TextStyle(
                //    fontWeight: FontWeight.bold,
                //    fontSize: 36,
                //    color: ColorConst.BLACK) ,),
              ],
            ),
          ),
          SizedBox(height: 31,),
          CustomInputField(hintText: "Username or password",
          prefixIcon: Icons.person),
           SizedBox(height: 31,),
          CustomInputField(
            hintText: "Password",
            prefixIcon: Icons.lock,
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(right: 25,left: 242),
            child: Text("Forgot password?",
            style: GoogleFonts.montserrat(
              color: ColorConst.PRIMARYCLR,
              fontSize: 12,
            ),),
          ),
          SizedBox(height: 70),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
            },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: 317,
              color: ColorConst.PRIMARYCLR,
              child: Text("Login"),
            ),
          ),
          SizedBox(height: 75,),
                    Text("- OR continue with -",
                    style: GoogleFonts.montserrat(
                      fontSize: 12
                    ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Image.asset(ImageConst.GOOGLEFONT1),
                radius: 30,
                backgroundColor: ColorConst.WHITE1,
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 30,
                // backgroundColor: ColorConst.WHITE1,
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                child: Image.asset(ImageConst.FACEBOOKLOG),
                radius: 30,
                backgroundColor: ColorConst.WHITE1,
              ),
            ],
          ),
          SizedBox(height: 29),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Create An Account",
            style: GoogleFonts.montserrat(
              fontSize: 14,
            ),),
            SizedBox(width: 5),
            Text("Sign Up",
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: ColorConst.PRIMARYCLR
            ),),
          ],)
        ],)
    );
  }
}


//text field