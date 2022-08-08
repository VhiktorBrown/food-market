import 'package:flutter/cupertino.dart';

class Slide extends StatelessWidget {
  String image;

  Slide({Key? key,
  required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(image)),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
