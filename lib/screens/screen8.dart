
import 'package:dinka_app/screens/PageViewerWithSounds.dart';
import 'package:flutter/material.dart';

import '../pagedetails/PageViewerWithSoundsEight.dart';


class ScreenEight extends StatelessWidget {
  const ScreenEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewerWithSoundsEight(),
    );
  }
}