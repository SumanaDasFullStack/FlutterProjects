import 'package:dinka_app/Constants/constant.dart';
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';

import '../pagedetails/PageViewerWithSoundsThirteen.dart';


class ScreenThirteen extends StatelessWidget {
  const ScreenThirteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewerWithSoundsThirteen(),
    );
  }
}