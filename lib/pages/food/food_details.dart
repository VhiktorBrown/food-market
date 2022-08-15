import 'package:flutter/material.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Food Market",
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  //Cart Icon and Number of items in Cart.
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shopping_cart, size: 18, color: AppColors.primaryColor,),
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
              ],
            ),

            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                  color: AppColors.backgroundColor
                ),
                child: Text(
                  "Vegan Green Leaf Feast",
                  style: GoogleFonts.nunito(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primaryColor
                  ),),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.primaryColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/food2.jpg"
                      ),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView.builder(
                    itemBuilder: (context, index) {

                }),
              ],
            ),
          )
        ],
      )
    );
  }
}
