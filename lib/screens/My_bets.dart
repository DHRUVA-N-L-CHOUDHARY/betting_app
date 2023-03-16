import 'package:betting_app/config/lists/categories_list.dart';
import 'package:betting_app/utils/Colors.dart';
import 'package:betting_app/utils/size_config.dart';
import 'package:betting_app/widgets/Custom_button.dart';
import 'package:flutter/material.dart';


class MyBetsScreen extends StatefulWidget {
  const MyBetsScreen({super.key});

  @override
  State<MyBetsScreen> createState() => _MyBetsScreenState();
}

class _MyBetsScreenState extends State<MyBetsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
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
          title: const Text("My Bets", style: TextStyle(color: Colors.black),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:20.0,top: 10.0, bottom: 10.0),
              child: Container(
                height: 0,
                width: 30,
                decoration: BoxDecoration(
                  color: KPrimaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: const Icon(Icons.arrow_back_ios_new,
                size: 20,
                )),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: KPrimaryColor,
            controller: _tabController,
            tabs: const[
               Tab(
                text: 'Bets Slip',
              ),
               Tab(text: 'Bet History'),
            ],
          ),
          toolbarHeight: 50,
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/mybets_background.png", width: 320, ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "You Currently dont have any booked games",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                ),
                CustomButton(
                  inpttxt: "Place a Bet",
                  inptheight: 50,
                  inptwidth:
                      SizeConfig(context).getProportionateScreenWidth(130),
                  color: KPrimaryColor,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        right: 0, left: 0, bottom: 10.0, top: 10.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: SizeConfig(context)
                        .getProportionateScreenHeight(catgelist.length * 100),
                    color: Colors.white,
                    child: ListView.builder(
                      itemCount: catgelist.length,
                      itemBuilder: ((context, index) {
                        return catgelist[index];
                      }),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
