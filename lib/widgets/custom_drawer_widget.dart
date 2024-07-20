import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/favourite_screen.dart';
import 'package:dinka_app/screens/screen1.dart';
import 'package:dinka_app/screens/screen11.dart';
import 'package:dinka_app/screens/screen2.dart';
import 'package:dinka_app/screens/screen3.dart';
import 'package:dinka_app/screens/screen4.dart';
import 'package:dinka_app/screens/screen5.dart';
import 'package:dinka_app/screens/screen6.dart';
import 'package:dinka_app/screens/screen7.dart';
import 'package:dinka_app/screens/screen8.dart';
import 'package:dinka_app/user_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';
import '../screens/screen10.dart';
import '../screens/screen12.dart';
import '../screens/screen13.dart';
import '../screens/screen9.dart';


class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Header of the Drawer
            Material(
              color: Colors.red,
              child: InkWell(
                onTap: (){
                  /// Close Navigation drawer before
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile()),);
                },
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top,
                      bottom: 24
                  ),
                  child: Column(
                    children: const[
                      CircleAvatar(
                        radius: 72,
                        backgroundImage: AssetImage("assets/images/titleimg.png")
                      ),
                      SizedBox(height: 12,),
                      Text(appName,
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white
                        ),),


                    ],
                  ),
                ),
              ),
            ),

            /// Header Menu items
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu1),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()),);

                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu2),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                   // Navigator.of(context).pushNamedAndRemoveUntil('/ScreenTwo', (Route<dynamic> route) => false);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()),);
                  },
                ),

                const Divider(color: Colors.black45,),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu3),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                   // Navigator.of(context).pushNamedAndRemoveUntil('/ScreenThree', (Route<dynamic> route) => false);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()),);
                  },
                ),
                /*ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu4),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()),);
                  },
                ),*/
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu5),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFour()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu6),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenFive()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu7),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSix()),);
                  },
                ),

                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu8),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenSeven()),);
                  },
                ),
                const Divider(color: Colors.black45,),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu9),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenEight()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu10),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenNine()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu11),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTen()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu12),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenEleven()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu13),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwelve()),);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit_rounded),
                  title: Text(drawerMenu14),
                  onTap: (){
                    /// Close Navigation drawer before
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThirteen()),);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
