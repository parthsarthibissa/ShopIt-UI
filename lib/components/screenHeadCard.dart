import 'package:flutter/material.dart';
import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';

class ScreenHeadCard extends StatelessWidget {
  final String image;
  final String processor;
  final String gpu;
  final String ram;
  final String storage;
  ScreenHeadCard(
      {@required this.image,
      @required this.gpu,
      @required this.processor,
      @required this.ram,
      @required this.storage});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: DeviceSizeConfig.screenHeight * 0.25,
            width: DeviceSizeConfig.screenWidth / 2.5,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    scale: 2,
                    alignment: Alignment.center,
                    image: AssetImage(image))),
          ),
          Container(
            alignment: Alignment.center,
            child: MyTextStyle(
              bold: 'yes',
              size: 15,
              text: processor + '\n' + ram + '\n' + storage + '\n' + gpu,
            ),
          ),
        ],
      ),
    );
  }
}
