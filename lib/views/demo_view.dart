import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutterdemoview/util/random_color.dart';

class DemoView extends StatefulWidget{
  @override
  _DemoViewState createState() => new _DemoViewState();
}

class _DemoViewState extends State<DemoView>{
  Color bodyColor = Color.fromARGB(255, 125, 83, 92);

  void windowOnClick(){
    setState(() {
      bodyColor = RandomColor.getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get size of the current media
    Size size = MediaQuery.of(context).size;

    window.onClick.listen((event) {
      windowOnClick();
    });

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: bodyColor,
        ),
        alignment: Alignment.center,
        child: Text('Hey There',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.green.withOpacity(1.0),
          ),
        ),
      ),
    );
  }
}