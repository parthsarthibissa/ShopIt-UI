import 'package:flutter/material.dart';
import 'package:prototypekart/components/text.dart';
import 'package:prototypekart/configs/sizeconf.dart';
import 'package:prototypekart/models/product.dart';

class ProductContainer extends StatefulWidget {
  ProductContainer({this.product});
  final Product product;

  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  bool show;
  @override
  void initState() {
    super.initState();
    show = false;
  }

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig().init(context);
    return Container(
        margin: EdgeInsets.all(10),
        height: DeviceSizeConfig.screenHeight * 0.6,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff009ffd),
                Color(0xff2a2a72)
              ]
            ),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Image.asset(
              widget.product.productImage,
              scale: 1.5,
            ),
            SizedBox(
              height: 10,
            ),
            MyTextStyle(
              text: widget.product.productName,
              color: Colors.white,
            ),
            Container(
              width: DeviceSizeConfig.screenWidth * 0.65,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: show==false ?Icon(Icons.arrow_circle_down,color: Colors.white,):Icon(Icons.arrow_circle_up,color: Colors.white),
                  ),
                  Visibility(
                    visible: show,
                    child: Column(
                      children: [
                        Align(

                          alignment: Alignment.centerLeft,
                          child: MyTextStyle(text: 'Processor: Intel i3',color: Colors.white)),
                        Align(
                          alignment: Alignment.centerLeft,child :MyTextStyle(text: 'RAM: 4GB',color: Colors.white),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,child :MyTextStyle(text: 'Storage: 512GB HDD',color: Colors.white),
                        ),
                        
                        SizedBox(height: 20,),
                        
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  MyTextStyle(text: 'Rs. 12500',color: Colors.white,),
                  Spacer(),
                  InkWell(child: Icon(Icons.shopping_cart_outlined,color: Colors.white))
                ],
              ),
            ),
            InkWell(
                      
                    child: Container(
                      height: DeviceSizeConfig.screenHeight*0.05,
                      width: DeviceSizeConfig.screenWidth*0.55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyTextStyle(text: 'Show Details',color: Colors.black,),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,color: Colors.black),
                        ],
                      ),
                    ),
                  ),
          ],
        ));
  }
}
