import 'package:prototypekart/components/text.dart';
import 'package:flutter/material.dart';
import 'package:prototypekart/configs/sizeconf.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function function;

  const MyButton({@required this.text, this.function});
  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return TextButton(
        child: MyTextStyle(text: text, color: Colors.black),
        style: TextButton.styleFrom(
          backgroundColor: Colors.orange[400],
          minimumSize: Size(DeviceSizeConfig.blockSizeVertical * 2,
              DeviceSizeConfig.blockSizeHorizontal * 2),
          padding: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  DeviceSizeConfig.blockSizeHorizontal * 1.5)),
          alignment: Alignment.center,
        ),
        onPressed: function);
  }
}
