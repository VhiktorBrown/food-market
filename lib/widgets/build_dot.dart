import 'package:flutter/cupertino.dart';
import 'package:food_market/utils/app_colors.dart';

class BuildDot extends StatelessWidget {
  BuildContext context;
  int index;
  int currentIndex;

  BuildDot({Key? key,
  required this.index,
  required this.currentIndex,
  required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? AppColors.primaryColor : AppColors.secondaryColor
      ),
    );
  }
}
