
import 'package:dinka_app/widgets/custom_drawer_widget.dart';
import 'package:flutter/material.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
        backgroundColor: Colors.amber,
      ),
      drawer: CustomDrawerWidget(),
    );
  }
}