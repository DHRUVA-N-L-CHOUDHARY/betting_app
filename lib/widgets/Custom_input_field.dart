import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prewidget;
  final Widget? sufwidget;
  const CustomInputField(
      {super.key, required this.controller, required this.hintText, this.prewidget,  this.sufwidget});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(screenHeight / 40),
      child: TextFormField(
        style: const TextStyle(
          fontFamily: "BentonSans",
        ),
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prewidget,
          suffixIcon: sufwidget ,
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "BentonSans",
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
