import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/geometry.dart';
import 'package:flutter/material.dart';

class Player extends CircleComponent{
  Player({
    //This code here means to me that when you are creating Player ,you must give them those variables.
    required super.position, // a must
    required double radius, // a must 
    Color color = Colors.white, // optional
  }): super(anchor: Anchor.center, //calling the parent constructor
  radius : radius,
  paint:Paint()..color=color..style=PaintingStyle.fill,);
}