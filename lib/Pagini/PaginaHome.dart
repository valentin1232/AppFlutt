import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/widgets/NavDrawer.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Incercare Side menu'),
      ),
      body: Center(
        child: Text('Side demo'),
      ),
    );
  }
}