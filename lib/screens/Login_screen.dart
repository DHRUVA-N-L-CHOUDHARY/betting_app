import 'package:betting_app/screens/Home_screen.dart';
import 'package:betting_app/utils/size_config.dart';
import 'package:betting_app/widgets/Custom_button.dart';
import 'package:betting_app/widgets/Custom_input_field.dart';
import 'package:betting_app/widgets/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Form(
              // key: ,
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
                  CustomInputField(
                    controller: emailcontroller,
                    hintText: "Enter username",
                    prewidget: Icon(Icons.person_outline_outlined),
                  ),

                  // const SizedBox(height: 25),

                  // password textfield
                  // MyTextField(
                  //   controller: controller.passwordController,
                  //   hintText: 'Password',
                  //   obscureText: true,
                  // ),
                  CustomInputField(
                    controller: passwordController,
                    hintText: "Enter the password",
                    prewidget: Icon(Icons.key),
                    sufwidget: Icon(Icons.remove_red_eye),
                  ),

                  const SizedBox(height: 10),

                  //forgot password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  // sign in button
                  CustomButton(
                    inpttxt: "LOGIN",
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

                  const SizedBox(height: 50),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  // google + facebook + twitter sign in buttons

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //google button
                      InkWell(
                        onTap: () {
                    Get.to(() => NavigationScreen(tabIndex: 3,));
                          // controller.googlesignin();
                        },
                        child: const SquareTile(
                            imagePath:
                                'https://imgs.search.brave.com/KGKy_xQhdXzQf2K32Xoqdw_INmQCQS1t-V_8dAD-yaM/rs:fit:728:724:1/g:ce/aHR0cHM6Ly9jZG4u/aW1nYmluLmNvbS8y/My83LzIvaW1nYmlu/LWdvb2dsZS1sb2dv/LWdvb2dsZS1zZWFy/Y2gtaWNvbi1nb29n/bGUtZ29vZ2xlLWxv/Z28taEVKTWpuZkNW/NE1BMWdEdGphV1R2/NWtjMS5qcGc'),
                      ),

                      const SizedBox(
                        width: 20,
                      ),

                      // facebook button

                      InkWell(
                        onTap: () {
                    Get.to(() => NavigationScreen(tabIndex: 3,));

                        },
                        child: const SquareTile(
                            imagePath:
                                'https://imgs.search.brave.com/ikcrhKQN5Ni60H22fPzkPeFZsD0oUqDTRZdQputksE8/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9wbmdp/bWcuY29tL3VwbG9h/ZHMvZ2l0aHViL2dp/dGh1Yl9QTkc0MC5w/bmc'),
                      ),

                      const SizedBox(
                        width: 20,
                      ),

                      //twitter button

                      InkWell(
                        onTap: () {
                    Get.to(() => NavigationScreen(tabIndex: 3,));
                          // Get.to(() => phoneNumber());
                        },
                        child: const SquareTile(
                            imagePath:
                                'https://imgs.search.brave.com/sMX_L82woegzL_fd82xkYeWlj4GbcixB7L4hnc4D9HM/rs:fit:980:982:1/g:ce/aHR0cDovL2Nkbi5v/bmxpbmV3ZWJmb250/cy5jb20vc3ZnL2lt/Z180ODgxNjQucG5n'),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  InkWell(
                    onTap: () {
                    Get.to(() => NavigationScreen(tabIndex: 3,));
                      // Get.to(() => const RegisterPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a Member?',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          'Register now',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}
