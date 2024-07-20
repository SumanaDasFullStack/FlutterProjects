import 'dart:ui';

import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';


class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerMenu3,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawerWidget(),
      body:
      Container(
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
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "A a",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        const Text(
                          "E e",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "I i",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "O o",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "U u",
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
                          "W w",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "Y y",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "B b",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "P p",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "M m",
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
                          "N n",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "NH  nh",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "Ŋ ŋ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "NY ny",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "R r",
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
                          "D d",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "DH dh",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "T t",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "TH th",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "L l",
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
                          "K k",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "G g",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "ɣ Ɣ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "C c",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "J j",
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
                    Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Ɛ ɛ",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                        ),
                        const Text(
                          "Ɔ ɔ",
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