import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dice/utlits/color_const.dart';
import 'package:flutter_dice/view/global_widgets/custom_input_field.dart';
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
            child: Container(child:
             Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // /n
               children: [
                 Text("Welcome",style:GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: ColorConst.BLACK) ,),
                  Text("Back!",style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: ColorConst.BLACK) ,),
               ],
             )),
          ),
          SizedBox(height: 31,),
          CustomInputField(hintText: "Username or password",
          prefixIcon: Icons.person),
           SizedBox(height: 31,),
          CustomInputField(
            hintText: "Password",
            prefixIcon: Icons.lock,
          ),
        ],
      ),
    );
  }
}


//text field