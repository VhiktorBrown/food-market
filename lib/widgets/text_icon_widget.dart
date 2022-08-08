import 'package:flutter/cupertino.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextIconWidget extends StatelessWidget {
  IconData icon;
  String text;

  TextIconWidget({Key? key,
  required this.icon,
  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 18,
            color: AppColors.primaryColor,
          ),
          const SizedBox(width: 20,),
          Text(
            text,
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold
              ),
          )
        ],
      ),
    );
  }
}
