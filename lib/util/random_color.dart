import 'dart:math';
import 'package:flutter/material.dart';

class RandomColor{
  static Color getRandomColor(){
    Random random = Random();
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}