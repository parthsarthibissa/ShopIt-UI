import 'package:prototypekart/components/screenHeadCard.dart';
import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:flutter/material.dart';

class ScreenHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(15),        
        height: DeviceSizeConfig.screenHeight * 0.25,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            
              colors: [Colors.orange, Colors.yellow, Colors.orange]
          ),
          borderRadius: BorderRadius.circular(25)
        ),
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            ScreenHeadCard(
              image: 'assets/images1.png',
              gpu: 'Nvidia GTX 2080 4GB',
              processor: 'Intel Core i5 11th gen',
              ram: '16GB RAM',
              storage: '512GB SSD',
            ),
            ScreenHeadCard(
              image: 'assets/images2.png',
              gpu: 'Nvidia GTX 1650ti 4GB',
              processor: 'Intel Core i5 10th gen',
              ram: '8 RAM',
              storage: '256GB SSD',
            ),
            ScreenHeadCard(
              image: 'assets/images5.png',
              gpu: 'Nvidia GTX 3090 4GB',
              processor: 'Intel Core i7 11th gen',
              ram: '16GB RAM',
              storage: '1TB SSD',
            ),
          ],
        ));
  }
}
