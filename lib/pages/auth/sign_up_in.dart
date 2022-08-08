import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/data/models/slider.dart';
import 'package:food_market/utils/dimensions.dart';
import 'package:food_market/widgets/build_dot.dart';
import 'package:food_market/widgets/slide.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';

class SignUpIn extends StatefulWidget {
  const SignUpIn({Key? key}) : super(key: key);

  @override
  State<SignUpIn> createState() => _SignUpInState();
}

class _SignUpInState extends State<SignUpIn> {
  late PageController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
              child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: slides.length,
                      onPageChanged: (value){
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Slide(
                            image: slides[index].image);
                      }),

            ),

          //The Dot Indicators
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(slides.length, (index) =>
              BuildDot(
                  index: index,
                  currentIndex: currentIndex,
                  context: context)),

            ),
          ),
          SizedBox(height: 100,),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.only(left: 30, right: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryColor
              ),
              child: Text(
                "Sign up",
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),
            ),

            //Sign in Button
            Container(
              height: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.secondaryColor, width: 2),
                  color: Colors.transparent
              ),
              child: Text(
                "Sign in",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.secondaryColor
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}

