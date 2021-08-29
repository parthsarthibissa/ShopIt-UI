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
    _tabController = TabController(
      length: 3,
      initialIndex: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Header(),
              Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      color: Colors.black45
                      ),
                      
                      height: DeviceSizeConfig.screenHeight-170,
                      width: DeviceSizeConfig.screenWidth / 4,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: TabBar(
                          controller: _tabController,
                          tabs: [
                            MyTextStyle(
                              text: 'High-End',
                              color: Colors.white,
                            ),
                            MyTextStyle(text: 'Mid-Range', color: Colors.white),
                            MyTextStyle(text: 'Budget-Range',color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: DeviceSizeConfig.screenHeight-170,
                      width: DeviceSizeConfig.screenWidth-100,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                        HighEndCollection(),
                        MidRangeCollection(),
                        BudgetCollection()
                      ]),
                    ),
                    
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
