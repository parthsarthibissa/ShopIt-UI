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
        height: show==true ? DeviceSizeConfig.screenHeight * 0.55:DeviceSizeConfig.screenHeight*0.45,
        padding: EdgeInsets.all(4),
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
            Row(
              children: [
                Container(
                  height: DeviceSizeConfig.screenHeight*0.175,
                  width: DeviceSizeConfig.screenWidth*0.45,
                  child: Image.asset(
                  widget.product.productImage,
                  scale: 2,
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: MyTextStyle(
                      text: widget.product.productName,
                      color: Colors.white,
                      size: 20,
                       bold: 'yes',
                    ),
                  ),
                ),
                
              ],
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
                        child: Container(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: MyTextStyle(text: widget.product.desc.processor,color: Colors.white)),
                              Align(
                                alignment: Alignment.centerLeft,child :MyTextStyle(text: widget.product.desc.ram,color: Colors.white),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,child :MyTextStyle(text: widget.product.desc.storage,color: Colors.white),
                              ),
                              SizedBox(height: 20,),
                              
                            ],
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  MyTextStyle(size: 18,bold: 'yes',text: widget.product.productPrice,color: Colors.white,),
                  Spacer(),
                  InkWell(child: Icon(Icons.add_shopping_cart_rounded,color: Colors.white))
                ],
              ),
            ),InkWell(
                      
                    child: Container(
                      height: DeviceSizeConfig.screenHeight*0.05,
                      width: DeviceSizeConfig.screenWidth*0.55,
                      margin: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyTextStyle(text: 'Show Full Details',color: Colors.black,),
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
