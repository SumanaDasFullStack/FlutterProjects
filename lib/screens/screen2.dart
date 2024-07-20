import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';


class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerMenu2,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      drawer: CustomDrawerWidget(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(15),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  screen2BodyText,
                  style: TextStyle(
                    fontSize: 12,

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}