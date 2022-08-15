import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_outlined,
                  color: AppColors.primaryColor,
                  size: 24,
                ),
                Icon(
                  Icons.edit,
                color: AppColors.primaryColor,
                  size: 24,
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                //User's Profile Image

                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                        "assets/images/food2.jpg"
                    ),
                  )
                ),
                const SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Richard Grumpy Skin",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryColor
                      ),
                    ),
                    const SizedBox(height: 10,),
                    //User Occupation
                    Text(
                      "Software Developer",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: AppColors.greyColor
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 20,),

          //Phone Number and Email
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: AppColors.greyColor,
                  size: 18,
                ),
                const SizedBox(width: 20,),
                Text(
                  "08167945270",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  color: AppColors.greyColor,
                  size: 18,
                ),
                const SizedBox(width: 20,),
                Text(
                  "elitedevelopers1@gmail.com",
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor
                  ),
                ),
              ],
            ),
          ),

          //Large Space
          const SizedBox(height: 25,),

          //Divider
          Divider(
            height: 0.1,
            thickness: 0.1,
            indent: 0,
            endIndent: 0,
            color: AppColors.primaryColor,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "\$259.50",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryColor
                      ),
                    ),
                    Text(
                      "Wallet",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor
                      ),
                    ),
                  ],
                ),

                //Divider between Wallet and Orders

                //Place holder for Orders
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "21",
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryColor
                      ),
                    ),
                    Text(
                      "Orders",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

          Divider(
            height: 0.1,
            thickness: 0.1,
            indent: 0,
            endIndent: 0,
            color: AppColors.primaryColor,
          ),

          const SizedBox(height: 25,),

          Expanded(
              child: Column(
                children: [
                  //Your Favorites
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Your Favorites",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                  //Space before PAYMENT
                  const SizedBox(height: 25,),

                  //PAYMENT
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Payment",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                  //Space before TELL YOUR FRIEND
                  const SizedBox(height: 25,),

                  //TELL YOUR FRIEND
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.group,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Tell Your Friend",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                  //Space before PROMOTIONS
                  const SizedBox(height: 25,),

                  //PROMOTIONS
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.post_add_rounded,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Promotions",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                  //Space before SETTINGS
                  const SizedBox(height: 25,),

                  //SETTINGS
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.settings,
                          color: AppColors.primaryColor,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Settings",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                  //Space after SETTINGS
                  const SizedBox(height: 30,),

                  //Divider
                  Divider(
                    height: 0.1,
                    thickness: 0.1,
                    indent: 0,
                    endIndent: 0,
                    color: AppColors.primaryColor,
                  ),

                  //Space after DIVIDER
                  const SizedBox(height: 25,),

                  //LOGOUT
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.logout,
                          color: Colors.redAccent,
                          size: 24,
                        ),
                        const SizedBox(width: 25,),

                        Text(
                          "Logout",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w800
                          ),
                        )

                      ],
                    ),
                  ),

                ],
              )
          )

        ],
      ),
    );
  }
}
