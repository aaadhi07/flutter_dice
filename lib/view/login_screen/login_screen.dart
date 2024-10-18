import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dice/utlits/color_const.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Welcome",style:TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(right: 29,left: 29),
            child: TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.person),filled:true, fillColor: ColorConst.GREYSHADE1,hintText: 'USER NAME',           
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
          ),
          SizedBox(height: 31,),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),filled:true, fillColor: ColorConst.GREYSHADE1,hintText: 'ENTER YOUR PASSWORD',           
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),),
          SizedBox(height: 31,),
          TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.remove_red_eye),filled:true, fillColor: ColorConst.GREYSHADE1,hintText: 'CONFIRM PASSWORD',           
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),)

        ],
      ),
    );
  }
}
//text field