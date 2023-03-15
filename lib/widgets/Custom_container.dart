import 'package:betting_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  final String inputtext;
  final String imgpt;
  final double ctrinputHeight;
  final Widget? trlwidget;
  final bool? trx;
  const CustomCategories({
    super.key,
    required this.inputtext,
    required this.imgpt,
    required this.ctrinputHeight,
    this.trlwidget,
    this.trx,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: InkWell(
        onTap: (() {
          // Get.to(() => ProductSearchScreen());
        }),
        child: Container(
            height: SizeConfig(context)
                .getProportionateScreenHeight(ctrinputHeight),
            width: SizeConfig(context).screenWidth,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(6, 6),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                horizontalTitleGap: 0.0,
                minVerticalPadding: 2.0,
                contentPadding: const EdgeInsets.only(left: 8.0),
                leading: Image.asset(
                  imgpt,
                  height: 30,
                  width: 30,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    inputtext,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                trailing: (trx == true)
                    ? trlwidget
                    : const Icon(Icons.arrow_forward_ios_rounded),
              ),
            )),
      ),
    );
  }
}
