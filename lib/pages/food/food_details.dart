import 'package:flutter/material.dart';
import 'package:food_market/data/models/category.dart';
import 'package:food_market/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
                  color: Colors.white
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.lightGrey
                        ),
                        child: Row(
                          children: [
                            Icon(
                              categories[index].icon,
                              size: 19,
                              color: categories[index].color,
                            ),
                            const SizedBox(width: 10,),
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

                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: AppColors.primaryColor,
                        ),
                        Text(
                          "Add to Favorites",
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greyColor
                          ),
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "234",
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

                    //Place holder for Reviews
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
                          "Reviews",
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

                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Details",
                    style: GoogleFonts.nunito(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primaryColor
                    ),
                  ),
                ),

                const SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff. This is the details of this particular food. It's the best fit for Vegetarians, enriched with all of nature's finest green stuff.",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.greyColor
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.lightGrey
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        color: AppColors.primaryColor,
                        size: 16,
                      ),
                      Text(
                        "1",
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

                const SizedBox(width: 20,),

                Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Add to cart",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.white
                          ),
                          ),
                          Text("\$34",
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
      ),
    );
  }
}
