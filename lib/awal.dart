// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tokoonline/constans.dart';
import 'package:tokoonline/users/landingpage.dart' as users;

class awalpage extends StatefulWidget {
  @override
  State<awalpage> createState() => _awalpageState();
}

class _awalpageState extends State<awalpage> {

  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return Timer (duration, (){
     Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) {  
          return users.landingpage();
    }));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Palette.bg1, Palette.bg2],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/mode.png",
                  height: 90.0,
                  width: 270.0,
                ),
              )
            ],
          ),
          ),
    );
  }
}
