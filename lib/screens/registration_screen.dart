import 'package:betting_app/screens/Home_screen.dart';
import 'package:betting_app/screens/Login_screen.dart';
import 'package:betting_app/utils/Colors.dart';
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

class _RegisterPageState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
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
        automaticallyImplyLeading: false,
        // leading: Image.asset("assets/logo-nobackground.png"),
        centerTitle: true,
        title: const Text(
          "Betting App",
          style: TextStyle(color: KPrimaryColor, fontSize: 30),
        ),
        bottom: TabBar(
          indicatorColor: KPrimaryColor,
          unselectedLabelColor: Colors.black,
          labelColor: KPrimaryColor,
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'LOGIN',
            ),
            Tab(text: 'SIGNUP'),
          ],
        ),
        toolbarHeight: 50,
      ),
      backgroundColor: Colors.grey[300],
      body: TabBarView(
        controller: _tabController,
        children: [
          const LoginScreen(),
          SingleChildScrollView(
            child: SafeArea(
                child: Form(
              // key: controller.registrationformKey,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // logo
                    Image.asset("assets/logo-nobackground.png"),

                    //welcome back!
                    Text(
                      'Welcome back',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(height: 25),

                    // password textfield
                    CustomInputField(
                      controller: emailcontroller,
                      hintText: "Enter username",
                      prewidget: const Icon(Icons.person_outline_outlined),
                    ),

                    // password textfield
                    CustomInputField(
                      controller: emailcontroller,
                      hintText: "Enter password",
                      prewidget: const Icon(Icons.key),
                    ),

                    const SizedBox(height: 25),
                    // sign Up button
                    CustomButton(
                      inpttxt: "SIGN UP",
                      inptheight: 70,
                      inptwidth:
                          SizeConfig(context).getProportionateScreenWidth(300),
                      color: KPrimaryColor,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      press: () {
                        Get.to(() => NavigationScreen(
                              tabIndex: 3,
                            ));
                      },
                    ),
                  ],
                ),
              ),
            )),
          ),
        ],
      ),
      // bottomSheet: SafeArea(
      //   child: InkWell(
      //     onTap: (){
      //       Get.to(() => const RegisterPage(
      //                 index: 2,
      //               ));
      //     },
      //     child: Container(
      //       color: Colors.grey[300],
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Already have an account?',
      //             style: TextStyle(color: Colors.grey[700]),
      //           ),
      //           const SizedBox(
      //             width: 4,
      //           ),
      //           const Text(
      //             'Sign In',
      //             style:
      //                 TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
