import 'package:prototypekart/components/button.dart';
import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:flutter/material.dart';
import 'package:prototypekart/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({this.product});

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return Container(
      height: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    scale: 2,
                    image: AssetImage(product.productImage)),
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.yellow, Colors.orange])),
      
            
          child: Column(
            children: [
                Align(
            alignment: Alignment.centerLeft,
            child: Text(
              product.productName,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              ' ' + product.productPrice,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: (){},
            child: MyTextStyle(
              text: 'Show Details ➡',
              bold: 'no',
              color: Colors.grey,
              size: 14,
            ),
          )
        
            ],
          ),
    );  }
}
