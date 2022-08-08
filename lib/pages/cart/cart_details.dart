import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:food_market/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/food.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    color: AppColors.primaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30,),
                        Text(
                          "Your Cart",
                          style: GoogleFonts.nunito(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              decoration: TextDecoration.none
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            left: 0,
            top: 100,
            right: 0,
            bottom: 0,
            child: ListView.builder(
                itemCount: foods.length,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        //Image that shows Food
                        Container(
                            height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.transparent
                              ),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset("assets/images/food2.jpg",)
                              )),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(foods[index].title,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: AppColors.primaryColor,
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    "120g",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.greyColor,
                                        decoration: TextDecoration.none
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      //Add or Remove icons
                                      Container(
                                        height: 30,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: AppColors.lightGrey
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Icon(
                                                Icons.remove,
                                                color: AppColors.primaryColor,
                                                size: 16,
                                              ),
                                              Text(
                                                "2",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w900,
                                                    decoration: TextDecoration.none,
                                                    color: AppColors.primaryColor
                                                ),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: AppColors.primaryColor,
                                                size: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "\$180",
                                        style: GoogleFonts.nunito(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                            decoration: TextDecoration.none,
                                            color: AppColors.primaryColor
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 230,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "47563522",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text(
                        "Promo code confirmed",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal:",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greyColor,
                    )
                  ),
                  Text(
                      "\$120",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Promocode Discount:",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor
                      )
                  ),
                  Text(
                      "\$25",
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.greyColor
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Total:",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryColor
                      )
                  ),
                  Text(
                      "\$95",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryColor
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              width: double.maxFinite,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColor
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Order",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
