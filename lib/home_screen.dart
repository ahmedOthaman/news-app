import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

static const String routeName='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading: Icon(Icons.menu),
      title:const Text(' News App'),
      centerTitle: true,

   ),
    );
  }
}