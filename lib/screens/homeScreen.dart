import 'package:flutter/material.dart';
import 'package:prototypekart/components/header.dart';
import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:prototypekart/screens/collections/budget.dart';
import 'package:prototypekart/screens/collections/highend.dart';
import 'package:prototypekart/screens/collections/midrange.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    TabController _tabController = TabController(
      length: 3,
      initialIndex: 1,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Column(
      children: [
        Header(),
        SingleChildScrollView(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                height: DeviceSizeConfig.screenHeight / 1.5,
                width: DeviceSizeConfig.screenWidth / 4,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    MyTextStyle(
                      text: 'Budget',
                      color: Colors.black,
                    ),
                    MyTextStyle(text: 'Mid-Range', color: Colors.black),
                    MyTextStyle(text: 'High-End', color: Colors.black),
                  ],
                ),
              ),
              TabBarView(
                controller: _tabController,
                children: [
                HighEndCollection(),
                MidRangeCollection(),
                BudgetCollection()
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
