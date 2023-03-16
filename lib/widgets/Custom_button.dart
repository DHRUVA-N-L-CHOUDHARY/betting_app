import 'package:betting_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String inpttxt;
  final double inptwidth;
  final double inptheight;
  final Function? press;
  final TextStyle style;
  final Color? color;
  const CustomButton({
    super.key,
    required this.inpttxt,
    this.inptwidth = 204,
    this.inptheight = 28,
    this.press,
    required this.style,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: press as void Function()?,
        child: Container(
          height: SizeConfig(context).getProportionateScreenHeight(inptheight),
          width: SizeConfig(context).getProportionateScreenWidth(inptwidth),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const[
                 BoxShadow(
                  color: Colors.white12,
                  spreadRadius: 3,
                  blurRadius: 3,
                ),
              ]),
          child: Center(
            child: Text(inpttxt, style: style),
          ),
        ),
      ),
    );
  }
}
