import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_market/pages/auth/sign_in.dart';
import 'package:food_market/pages/auth/sign_up.dart';
import 'package:food_market/pages/auth/sign_up_in.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../cart/cart_details.dart';
import 'main_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex=0;


  List pages = [
    const MainHomePage(),
    const CartDetails(),
    SignIn()
  ];

  void onTapNav(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.secondaryColor,
        unselectedItemColor: AppColors.primaryColor,
        selectedLabelStyle: GoogleFonts.nunito(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.nunito(
          fontWeight: FontWeight.w200
        ),
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: onTapNav,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "My History",
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );;
  }
}

