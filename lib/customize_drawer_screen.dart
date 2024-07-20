

import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/screens/screen1.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:dinka_app/widgets/custom_drawer_widget_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomizeDrawerScreen extends StatelessWidget {
  const CustomizeDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(appName,style: TextStyle(color: Colors.white),),
        ),
        drawer: CustomDrawerWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    screen1BodyText,
                    style: TextStyle(
                      fontSize: 12,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/map.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
