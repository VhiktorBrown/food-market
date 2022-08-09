import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/dimensions.dart';

class InputText extends StatelessWidget {
  TextEditingController textController;
  String hintText;
  IconData icon;
  bool isObscure;

  InputText({Key? key,
  required this.textController,
  required this.hintText,
  required this.icon,
  this.isObscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: AppColors.lightBlack,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.lightGrey, width: 0),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 1,
              offset: const Offset(1, 1),
              color: Colors.grey.withOpacity(0.2),
            )
          ]
      ),
      child: TextField(
        obscureText: isObscure?true:false,
        controller: textController,
        keyboardType: TextInputType.text,
        cursorRadius: const Radius.circular(1),
        cursorColor: AppColors.primaryColor,
        style: GoogleFonts.nunito(
          fontSize: 18,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w400
        ),
        decoration: InputDecoration(
          //hintText
          hintText: hintText,
          //suffixIcon
          suffixIcon: Icon(icon, color: AppColors.primaryColor,),
          //focusedBorder
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.primaryColor
              )
          ),

          //enabled Border
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.transparent,
              )
          ),

          //border - Just border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: AppColors.lightGrey
            )
          ),

        ),
      ),
    );
  }
}
