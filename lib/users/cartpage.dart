// ignore_for_file: camel_case_types, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Cart"),
      ),
      body: Center(
        child: Text(
          'cartpage',
        ),
      ),
    );
  }
}
