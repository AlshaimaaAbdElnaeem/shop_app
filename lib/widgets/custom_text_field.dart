
import 'package:flutter/material.dart';
import 'package:shop_app/views/constans.dart';
import 'package:shop_app/widgets/decoration_text_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,});
final String hintText ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0 , vertical: 10),
      child: TextField(
        obscureText: hintText == 'Password' ? true : false,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                border: decorationTextField(),
                focusedBorder:decorationTextField(),
                hintText: hintText ,
              ),
              
            ),
    );
  }

  
}