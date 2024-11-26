import 'package:flutter/material.dart';
import 'package:sample/utils/colorconstant.dart';
import 'package:sample/utils/image_constant.dart';
import 'package:sample/view/homeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
   Future.delayed(Duration(seconds: 5),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen(),));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// image
     body: Column(
      children: [
        SizedBox(
          height: 220,
        ),
        Center(
          child: Container(
            height: 205,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                ImageConstant.Logo,
              )),
            ),
          ),
        ),
// text
        Text("Learning Is Fun When It's a Game!",style: TextStyle(
          color: Colorconstant.mainColor,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),)
      ],
     ),
    );
  }
}