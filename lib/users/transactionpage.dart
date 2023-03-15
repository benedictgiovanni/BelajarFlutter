// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class transactionpage extends StatefulWidget {
  @override
  State<transactionpage> createState() => _transactionpageState();
}

class _transactionpageState extends State<transactionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Transaction"),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Text(
          'transactionpage',
        ),
      ),
    );
  }
}
