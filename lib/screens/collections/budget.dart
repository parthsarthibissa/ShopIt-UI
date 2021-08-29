import 'package:flutter/material.dart';
import 'package:prototypekart/components/productcard.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:prototypekart/models/product.dart';

class BudgetCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductContainer(
          product: Product(
              productImage: 'assets/images1.png',
              productName: 'Budget Build 1',
              productPrice: 'Rs.16750',
              desc: Components(
                  cabinet: 'Iball Plastic Case',
                  gpu: 'Nvidia GT 710 2GB',
                  motherBoard: 'Intel',
                  powerSupply: '250W Zebronics',
                  processor: 'Intel Core i3 6th gen',
                  ram: '4GB',
                  storage: '512GB HDD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/images1.png',
              productName: 'Budget Build 1',
              productPrice: 'Rs.16750',
              desc: Components(
                  cabinet: 'Iball Plastic Case',
                  gpu: 'Nvidia GT 710 2GB',
                  motherBoard: 'Intel',
                  powerSupply: '250W Zebronics',
                  processor: 'Intel Core i3 6th gen',
                  ram: '4GB',
                  storage: '512GB HDD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/images1.png',
              productName: 'Budget Build 1',
              productPrice: 'Rs.16750',
              desc: Components(
                  cabinet: 'Iball Plastic Case',
                  gpu: 'Nvidia GT 710 2GB',
                  motherBoard: 'Intel',
                  powerSupply: '250W Zebronics',
                  processor: 'Intel Core i3 6th gen',
                  ram: '4GB',
                  storage: '512GB HDD')),
        ),
      ],
    );
  }
}
