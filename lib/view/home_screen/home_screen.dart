import 'package:flutter/material.dart';
import 'package:flutter_dice/utlits/color_const.dart';
import 'package:flutter_dice/utlits/image_const.dart';
import 'package:flutter_dice/view/global_widgets/custom_input_field.dart';
// import 'package:flutter_ecommerce/utiles/Color_constant.dart';
// import 'package:flutter_ecommerce/utiles/utiles.dart';
// import 'package:flutter_ecommerce/view/customtext2/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.list),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConst.MYLOGO,
              height: 31,
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 9,
            ),
            Text("Stylish",
                style: GoogleFonts.libreCaslonText(
                    fontSize: 18,
                    color: ColorConst.PRIMARYCLR,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [CircleAvatar()],
      ),
      body: Column(
        children: [//section 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(),
          ),//section 2
          _BuildAllfunction()
        ],
      ),
    );
  }

  Column _BuildAllfunction() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'All Featured',
              style: GoogleFonts.montserrat(
                  fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Container(  
              child: Row(
                children: [
                  Text(
                    'Sort',
                    style: GoogleFonts.montserrat(fontSize: 12),
                  ),
                  Icon(Icons.swap_vert)
                ],
              ),
            ),
            Container(
              child: Row(
                children: [Text('Filter'), Icon(Icons.filter_alt_sharp)],
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        // SingleChildScrollView(scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: List.generate(Image.options.length,(index) => Column(
        //         children: [
        //           Column(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: CircleAvatar(
        //                   radius: 38,
        //                   //backgroundImage: AssetImage(Utiles.options[index]),
        //                 ),
        //               ),
        //               Text(
        //             'Beauty',
        //             style: GoogleFonts.montserrat(fontSize: 10),
        //           )
        //             ],
        //           ),
        //           SizedBox(
        //             height: 4,
        //           ),
                  
        //         ],
        //       ),)
              
        //     ,
        //   ),
        // )
      ],
    );
  }
}