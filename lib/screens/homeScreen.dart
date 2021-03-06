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
    return  SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Header(),
              TabBar(
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
                      
                    Expanded(
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
        ),
    );
  }
}
