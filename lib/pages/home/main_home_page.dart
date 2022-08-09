import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_market/data/models/category.dart';
import 'package:food_market/data/models/food.dart';
import 'package:food_market/pages/cart/cart_details.dart';
import 'package:food_market/widgets/text_field_widget.dart';
import 'package:food_market/widgets/text_icon_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Container(
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              color: Colors.white
            ),
            child: Column(
              children: [
                //The container above Home page with App Name, search edittext and Cart items
                Container(
                  padding: EdgeInsets.only(top: 30),
                  width: double.maxFinite,
                  height: 180,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Food Market",
                              style: GoogleFonts.nunito(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.to(CartDetails());
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                                width: 60,
                                decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                //Cart Icon and Number of items in Cart.
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.shopping_cart, size: 18,),
                                    Text(
                                      "2",
                                      style: GoogleFonts.raleway(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          color: AppColors.primaryColor
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextFieldWidget(
                          textController: searchController,
                          hintText: "Search for something tasty..",
                          icon: Icons.search,
                          radius: 10),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                TextIconWidget(icon: Icons.repeat, text: "Repeat last order"),
                SizedBox(height: 10,),
                Divider(
                  height: 0.5,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: AppColors.primaryColor,
                ),
                SizedBox(height: 10,),
                TextIconWidget(icon: Icons.help_outline_outlined, text: "Help me choose"),
                SizedBox(height: 10,),
                Divider(
                  height: 0.5,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: AppColors.primaryColor,
                ),
                SizedBox(height: 10,),
                TextIconWidget(icon: Icons.settings_suggest, text: "Suggestions"),
                SizedBox(height: 20,)
              ],
            ),
          ),
          SizedBox(height: 30,),

          //Top Categories text and "See all"
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w800
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.greyColor
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: AppColors.greyColor,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),

          //Categories ListView
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Row(
                  children: [
                    Icon(
                      categories[index].icon,
                      size: 19,
                      color: categories[index].color,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      categories[index].text,
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
          SizedBox(height: 20,),

          //Recommended Text and "See all" text
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: GoogleFonts.nunito(
                      fontSize: 20,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w800
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "See all",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.greyColor
                      ),
                    ),
                    SizedBox(width: 10,),
                    Icon(
                      Icons.arrow_forward,
                      size: 14,
                      color: AppColors.greyColor,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),

          //Recommended for you List View
          //Categories ListView
          Container(
            height: 200,
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.maxFinite,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    height: 200,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent
                          ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                                child: Image.asset("assets/images/food2.jpg",)
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  foods[index].title,

                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w800
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                padding: EdgeInsets.only(left:10, right: 10),
                                child: Text(
                                  "\$${foods[index].price}",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      )
    );
  }
}
