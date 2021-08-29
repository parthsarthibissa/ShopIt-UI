import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String buttonText;
  bool drawerEnable;

  void initState() {
    super.initState();
    drawerEnable = false;
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return Container(
      alignment: Alignment.centerLeft,
      height: DeviceSizeConfig.screenHeight * 0.08,
      width: DeviceSizeConfig.screenWidth,
      constraints: BoxConstraints(
          maxWidth: DeviceSizeConfig.screenWidth,
          minWidth: DeviceSizeConfig.screenWidth - 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyTextStyle(
            text: 'ShopIt!',
            bold: 'yes',
          ),
        ],
      ),
    );
  }
}
