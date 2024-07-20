import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/customize_drawer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CustomizeDrawerScreen(),
    );
  }
}