
import 'dart:ui';

import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';


class ScreenSeven extends StatelessWidget {
  const ScreenSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerMenu7,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawerWidget(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg1.png"),
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
                      screen7BodyText,
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
                              "W",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                              ),
                            ),
                            const Text(
                              "Y",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "B",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "P",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),

                          ],),

                      ],),
                    const SizedBox(height: 20),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "M",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "N",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "Ŋ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "R",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),

                          ],),

                      ],),
                    const SizedBox(height: 20),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "D",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "T",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "L",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "K",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),

                          ],),

                      ],),
                    const SizedBox(height: 20),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "G",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "Ɣ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "C",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),
                            const Text(
                              "J",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: textColor
                              ),
                            ),

                          ],),

                      ],),

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