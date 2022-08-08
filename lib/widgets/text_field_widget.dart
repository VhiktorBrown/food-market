import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  final double radius;
  bool isObscure;

  TextFieldWidget({Key? key, required this.textController, required this.hintText,
    required this.icon,
    required this.radius,
    this.isObscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: AppColors.darkerGrey,
          borderRadius: BorderRadius.circular(radius),
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
        textAlign: TextAlign.start,
        cursorColor: AppColors.secondaryColor,
        textAlignVertical: TextAlignVertical.center,
        style: GoogleFonts.nunito(
          fontSize: 14,
          color: AppColors.greyColor
        ),
        decoration: InputDecoration(
          //hintText
          hintText: hintText,
          //prefixIcon
          prefixIcon: Icon(icon, color: AppColors.greyColor,),
          //focusedBorder
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(
                  width: 1.0,
                  color: AppColors.secondaryColor
              )
          ),

          //enabled Border
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.transparent,
              )
          ),

          //border - Just border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
