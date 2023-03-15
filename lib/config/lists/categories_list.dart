import 'package:betting_app/widgets/Custom_container.dart';
import 'package:flutter/cupertino.dart';

List<CustomCategories> catoglist = const [
  CustomCategories(
    inputtext: "Personal Info",
    imgpt: "assets/personal_info.png",
    ctrinputHeight: 60,
  ),
  CustomCategories(
    inputtext: "Bonuses",
    imgpt: "assets/bonuses.png",
    ctrinputHeight: 60,
  ),
  CustomCategories(
    inputtext: "Promotions",
    imgpt: "assets/promotions.png",
    ctrinputHeight: 60,
  ),
  CustomCategories(
    inputtext: "Card Management",
    imgpt: "assets/card_management.png",
    ctrinputHeight: 60,
  ),
  CustomCategories(
    inputtext: "Online Customer Service",
    imgpt: "assets/customer_service.png",
    ctrinputHeight: 60,
  ),
];

List<CustomCategories> catgelist = const [
  CustomCategories(
    inputtext: "13 August",
    imgpt: "assets/bx_football.png",
    ctrinputHeight: 60,
    trlwidget: ImageIcon(AssetImage("assets/debit.png"),color: Color.fromRGBO(0, 255, 0, 100),),
    trx: true,
  ),
  CustomCategories(
    inputtext: "8 August",
    imgpt: "assets/pan.png",
    ctrinputHeight: 60,
     trlwidget: ImageIcon(AssetImage("assets/debit.png"),color: Color.fromRGBO(255, 0, 0, 100),),
    trx: true,
  ),
  CustomCategories(
    inputtext: "1 August",
    imgpt: "assets/games.png",
    ctrinputHeight: 60,
     trlwidget: ImageIcon(AssetImage("assets/debit.png"), color: Color.fromRGBO(0, 255, 0, 100),),
    trx: true,
  ),
  CustomCategories(
    inputtext: "3 July",
    imgpt: "assets/table_tennis.png",
    ctrinputHeight: 60,
     trlwidget: ImageIcon(AssetImage("assets/debit.png"),color: Color.fromRGBO(255, 0, 0, 100),),
    trx: true,
  ),
];
