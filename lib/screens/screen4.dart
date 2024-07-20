
import 'dart:ui';

import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';


class ScreenFour extends StatelessWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerMenu4,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawerWidget(),
      body:
      Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg2.png"),
              fit: BoxFit.cover)
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
        child:Card(

          color: Colors.black.withOpacity(0.5),
          child:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 20),
                  const Text(
                    screen4BodyText,
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "A",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor,
                            ),
                          ),
                          const Text(
                            "E",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor
                            ),
                          ),
                          const Text(
                            "I",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor
                            ),
                          ),
                          const Text(
                            "O",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor
                            ),
                          ),
                          const Text(
                            "Ɛ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor
                            ),
                          ),
                          const Text(
                            "Ɔ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor
                            ),
                          ),
                        ],),

                    ],),
                  const SizedBox(height: 20),

                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}