// ignore_for_file: use_key_in_widget_constructors, camel_case_types, unnecessary_const, unnecessary_new, use_full_hex_values_for_flutter_colors, prefer_const_constructors, non_constant_identifier_names, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tokoonline/constans.dart';
import 'package:tokoonline/users/depanpage.dart';
import 'package:tokoonline/users/kategoripage.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index; 
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {
          },
          readOnly: true,
          style: const TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search,color: Palette.orange),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: Colors.white),
            ),
            fillColor: const Color(0xfff3ff3f4),
            filled: true),
          ),
          backgroundColor: Palette.bg1,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Palette.orange,
            labelColor: Palette.orange,
            unselectedLabelColor: Colors.grey,
            labelPadding: const EdgeInsets.all(0),
            tabs: [
              const Tab(text: "Home" ),
              const Tab(text: "Category" ),
            ],
          ),
        ),
      body: TabBarView(
        physics : NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          depanpage(),
          kategoripage(),
        ]
      )
    );
  }
}


