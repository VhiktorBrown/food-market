import 'package:flutter/material.dart';
import 'package:food_market/pages/home/home_page.dart';
import 'package:get/get.dart';
import 'package:food_market/helper/dependencies.dart' as dep;

void main() {
  dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:HomePage()
    );
  }
}