import 'package:flutter/material.dart';
import 'package:prototypekart/components/productcard.dart';
import 'package:prototypekart/models/product.dart';

class HighEndCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductContainer(
          product: Product(
              productImage: 'assets/images1.png',
              productName: 'High End Build',
              productPrice: 'Rs.104750',
              desc: Components(
                  cabinet: 'RGB Glass Case',
                  gpu: 'NVIDIA RTX 3090',
                  motherBoard: 'ASUS ROG',
                  powerSupply: '850W Zebronics',
                  processor: 'AMD Ryzen 9',
                  ram: '16GB',
                  storage: '1TB SSD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/images5.png',
              productName: 'High End Build 2',
              productPrice: 'Rs.160999',
              desc: Components(
                  cabinet: 'RGB Glass Case',
                  gpu: 'NVIDIA RTX 3090',
                  motherBoard: 'MSI',
                  powerSupply: '850W Zebronics',
                  processor: 'Intel Core i9',
                  ram: '16GB',
                  storage: '1.5TB SSD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/images6.png',
              productName: 'Budget Gaming Build',
              productPrice: 'Rs.26750',
              desc: Components(
                  cabinet: 'Glass RGB Case',
                  gpu: 'NVIDIA RTX 3090',
                  motherBoard: 'MSI',
                  powerSupply: '850W Zebronics',
                  processor: 'AMD Ryzen',
                  ram: '32GB',
                  storage: '2TB SSD')),
        ),
      ],
    );
  }
}