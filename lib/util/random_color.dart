import 'dart:math';
import 'package:flutter/material.dart';

class RandomColor{
  static Color getRandomColor() => Color(Random().nextInt(0xFFFFFFFF));
}