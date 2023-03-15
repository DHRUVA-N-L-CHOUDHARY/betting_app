import 'package:betting_app/screens/Home_screen.dart';
import 'package:betting_app/screens/Login_screen.dart';
import 'package:betting_app/utils/size_config.dart';
import 'package:betting_app/widgets/Custom_button.dart';
import 'package:betting_app/widgets/Custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  final double index;
  const RegisterPage({super.key, required this.index});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin{
   late TabController _tabController;
    TextEditingController emailcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
         bottom:TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(text: 'LOGIN', ),
            Tab(text: 'SIGNUP'),
          ],
        ),
        toolbarHeight: 50,
      ),
      backgroundColor: Colors.grey[300],
      body:  TabBarView(
        controller: _tabController,
        children: [
      LoginScreen(),
      SingleChildScrollView(
        child: SafeArea(
            child: Form(
          // key: controller.registrationformKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                // logo
                const Icon(Icons.lock, size: 100),

                const SizedBox(height: 50),

                //welcome back!
                Text(
                  'Welcome back',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 50),
                // username textfield

                const SizedBox(height: 25),

                // password textfield
                CustomInputField(
                  controller: emailcontroller,
                  hintText: "Enter username",
                  prewidget: Icon(Icons.person_outline_outlined),
                ),

                // password textfield
                CustomInputField(
                  controller: emailcontroller,
                  hintText: "Enter password",
                  prewidget: Icon(Icons.key),
                ),

                const SizedBox(height: 25),
                // sign Up button
                CustomButton(
                  inpttxt: "SIGN UP",
                  inptheight: 70,
                  inptwidth:
                      SizeConfig(context).getProportionateScreenWidth(300),
                  color: Color.fromARGB(255, 6, 53, 245),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  press: (){
                    Get.to(() => NavigationScreen(tabIndex: 3,));
                  },
                ),
              ],
            ),
          ),
        )),
      ),
       ],
      ),
      bottomSheet: SafeArea(
        child: Container(
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'Sign In',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
       
    );
  }
}
