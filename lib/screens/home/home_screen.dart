import 'package:flutter/material.dart';
import 'package:twisun/screens/home/tab_1.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:twisun/constants.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          actions: <Widget>[
            Center(child: Text("120")),
            IconButton(
              icon: Icon(
                Icons.monetization_on_outlined,
                color: Colors.amber,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          height: context.percentHeight * 81,
          child: VStack([
            VxBox().make(),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: VxBox(
                  child: VStack([
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Container(
                    color: Colors.grey[350],
                    child: TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.indigo[900],
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: kPrimaryColor,
                      unselectedLabelColor: Colors.grey[100],
                      labelPadding: Vx.m16,
                      tabs: [
                        Icon(Icons.home, size: 30),
                        Icon(Icons.wb_sunny, size: 30),
                        Icon(Icons.emoji_events, size: 30),
                        Icon(Icons.settings, size: 30),
                      ],
                    ),
                  ),
                ),
                TabBarView(
                  controller: _tabController,
                  children: [
                    GeneralTab(),
                    GeneralTab(),
                    GeneralTab(),
                    GeneralTab(),
                  ],
                ).expand(),
              ])).white.make(),
            ).expand()
          ]),
        ),
        bottomSheet: Container(
          color: kPrimaryColor,
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.copyright,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Renault SOFASA",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
