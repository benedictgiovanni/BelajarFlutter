// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class accountpage extends StatefulWidget {
  @override
  State<accountpage> createState() => _accountpageState();
}

class _accountpageState extends State<accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Profile "),
      ),
      body: Center(
        child: Text(
          'accountpage',
        ),
      ),
    );
  }
}
