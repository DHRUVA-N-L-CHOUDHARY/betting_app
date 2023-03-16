import 'package:betting_app/config/lists/Tournaments_list.dart';
import 'package:betting_app/screens/registration_screen.dart';
import 'package:betting_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TournamentsScreen extends StatefulWidget {
  const TournamentsScreen({super.key});

  @override
  State<TournamentsScreen> createState() => _TournamentsScreenState();
}

class _TournamentsScreenState extends State<TournamentsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: selectedIndex, length: 2, vsync: this);
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
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: const Text(
            "Betting App",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions:  [
           const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: (){
                Get.to(() => const RegisterPage(index: 1));
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
              ),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: KPrimaryColor,
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Top Tournaments',
              ),
              Tab(text: 'Latest Tournaments'),
            ],
          ),
          toolbarHeight: 50,
        ),
        body: TabBarView(controller: _tabController, children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.only(
                    right: 0, left: 0, bottom: 10.0, top: 10.0),
                width: MediaQuery.of(context).size.width - 10,
                height: toptournlist.length * 200,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: toptournlist.length,
                  itemBuilder: ((context, index) {
                    return toptournlist[index];
                  }),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.only(
                    right: 0, left: 0, bottom: 10.0, top: 10.0),
                width: MediaQuery.of(context).size.width - 10,
                height: latesttournlist.length * 200,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: latesttournlist.length,
                  itemBuilder: ((context, index) {
                    return latesttournlist[index];
                  }),
                ),
              ),
            ),
          ),
        ]));
  }
}
