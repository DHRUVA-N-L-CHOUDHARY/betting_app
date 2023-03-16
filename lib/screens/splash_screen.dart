import 'package:betting_app/screens/registration_screen.dart';
import 'package:betting_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("assets/logo-nobackground.png",width: (screenWidth/20)*19,),
          const Text(
            "Welcome To Our Betting App",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25,),
          ),
          Column(
            children: [
             Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 10,
                vertical: screenWidth/20,
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: KPrimaryColor,
                ),
                onPressed: () async {
                  Get.to(()=> const RegisterPage(index: 1,));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight / 80),
                  child: const Center(
                    child: Text(
                      "Login to your account",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "BentonSans",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 10,
                vertical: screenWidth/20,
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  side: const BorderSide(width: 1.5),
                  backgroundColor: Colors.white,
                ),
                onPressed: () async {
                  Get.to(()=> const RegisterPage(index: 2,));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight / 80),
                  child: const Center(
                    child: Text(
                      "Register Your account",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "BentonSans",
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            ),
            ],
          )
        ],
      ),
    );
  }
}
