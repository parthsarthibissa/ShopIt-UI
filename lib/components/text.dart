import 'package:prototypekart/configs/sizeconf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle extends StatelessWidget {
  final String text;

  final String bold;
  final Color color;
  final double size;
  const MyTextStyle({@required this.text, this.bold, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    DeviceSizeConfig()..init(context);
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize:
              size == null ? DeviceSizeConfig.safeBlockVertical * 2.1 : size,
          letterSpacing: 1,
          color: color,
          fontWeight: bold == 'yes' ? FontWeight.bold : FontWeight.normal),
    );
  }
}
