import 'package:dinka_app/pagedetails/PageViewerWithSoundsNine.dart';
import 'package:dinka_app/pagedetails/PageViewerWithSoundsTen.dart';
import 'package:flutter/material.dart';


class ScreenTen extends StatelessWidget {
  const ScreenTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewerWithSoundsTen(),
    );
  }
}