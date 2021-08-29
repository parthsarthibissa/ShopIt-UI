import 'package:flutter/material.dart';
import 'package:prototypekart/components/header.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Header(),
        SingleChildScrollView(
          child: Column(children: []),
        ),
      ],
    )));
  }
}
