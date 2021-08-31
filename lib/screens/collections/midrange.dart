import 'package:flutter/material.dart';
import 'package:prototypekart/components/productcard.dart';
import 'package:prototypekart/models/product.dart';
class MidRangeCollection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductContainer(
          product: Product(
              productImage: 'assets/budget1.PNG',
              productName: 'DELL Budget Build',
              productPrice: 'Rs.14750',
              desc: Components(
                  cabinet: 'Dell U5670 Case',
                  gpu: 'Intel HD 4000',
                  motherBoard: 'Gigabyte',
                  powerSupply: '250W Zebronics',
                  processor: 'Intel Pentium G2020',
                  ram: '4GB',
                  storage: '512GB HDD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/budget2.png',
              productName: 'Custom Budget Build',
              productPrice: 'Rs.16999',
              desc: Components(
                  cabinet: 'Zebronics T761 Case',
                  gpu: 'AMD Vega Graphics',
                  motherBoard: 'Intel',
                  powerSupply: '250W Zebronics',
                  processor: 'AMD Ryzen 3',
                  ram: '4GB',
                  storage: '512GB HDD')),
        ),
        ProductContainer(
          product: Product(
              productImage: 'assets/budget3.PNG',
              productName: 'Budget Gaming Build',
              productPrice: 'Rs.16750',
              desc: Components(
                  cabinet: 'Enter 6RTG Cabinet',
                  gpu: 'Nvidia GT 710 2GB',
                  motherBoard: 'MSI',
                  powerSupply: '250W Zebronics',
                  processor: 'Intel Core i3 6th gen',
                  ram: '8GB',
                  storage: '512GB SSD')),
        ),
      ],
    );
  }
}