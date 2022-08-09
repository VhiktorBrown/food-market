import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../widgets/input_text.dart';

class SignIn extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              //Back Arrow Container
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.lightBlack
                ),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.primaryColor,
                  size: 20,
                ),
              ),
              const SizedBox(height: 20,),
              //"Create" Text
              Text(
                "Login",
                style: GoogleFonts.nunito(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primaryColor
                ),
              ),
              const SizedBox(height: 30,),

              Text(
                "Your Email",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(height: 5,),

              //Email Text Field
              InputText(
                  textController: emailController,
                  hintText: "Your Email",
                  icon: Icons.email),

              const SizedBox(height: 20,),

              Text(
                "Password",
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(height: 5,),

              //Text Field
              InputText(
                  textController: passwordController,
                  hintText: "Password",
                  icon: Icons.password),

              const SizedBox(height: 35,),

              //Create Account Button
              Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.primaryColor,
                ),
                child: Text(
                  "Log in",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800
                  ),
                ),
              ),

              const SizedBox(height: 35,),

              //LOG IN WITH GOOGLE BUTTON
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.primaryColor, width: 1),
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google.png",
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(width: 20,),
                    Text(
                      "Sign in with Google",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20,),


              //TEXT ASKING TO SIGN IF They DON'T  HAVE AN ACCOUNT ALREADY
              RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: GoogleFonts.nunito(
                      color: AppColors.greyColor,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        //when user taps on Create, it takes user to Sign up page
                        //recognizer: TapGestureRecognizer()..onTap=()=> Get.to(SignUpPage(), transition: Transition.fade),
                          text: " Sign up.",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                            fontSize: 18,
                          ))
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
