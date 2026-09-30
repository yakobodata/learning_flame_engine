import 'dart:async';
import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_green/constants.dart';
import 'package:go_green/player.dart';

class GoGreen extends FlameGame{
  GoGreen()
  :super(camera: CameraComponent.withFixedResolution(
    width: gameWidth,
    height: gameHeight));

  @override
  Color backgroundColor(){
    return Colors.green;
  }

  @override
  FutureOr<void>onLoad(){
    super.onLoad();
    world.add(Player(
      position: Vector2(-(gameWidth/4),0), 
      radius: gameWidth/4,
      ));

    world.add(Player(
      position: Vector2(gameWidth/4,0), 
      radius: gameWidth/4,
      color:Colors.blue,
      ));
}
}