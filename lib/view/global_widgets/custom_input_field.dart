import 'package:flutter/material.dart';
import 'package:flutter_dice/utlits/color_const.dart';

class CustomInputField extends StatelessWidget {
  IconData? prefixIcon;
  String? hintText;
 
 CustomInputField({
   
    this.hintText,this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 29,left: 29),
      child: TextField(decoration:
       InputDecoration(
        prefixIcon: Icon(prefixIcon),
      filled:true, fillColor: ColorConst.GREYSHADE3,
      hintText:hintText,           
      border: OutlineInputBorder(borderSide: BorderSide(color: ColorConst.GREYSHADE1),
        borderRadius: BorderRadius.circular(10))),),
    );
  }
}