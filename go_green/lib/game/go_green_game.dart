
import 'dart:async';
import 'dart:ui';

import 'package:flame/camera.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_green/constants.dart';
import 'package:go_green/game/go_green_world.dart';


class GoGreenGame extends FlameGame<GoGreenWorld>with
HorizontalDragDetector,KeyboardEvents,HasCollisionDetection{
  GoGreenGame()
  :super(
    world:GoGreenWorld(),
    camera: CameraComponent.withFixedResolution(
    width: gameWidth,
    height: gameHeight
    ));

  @override
  FutureOr<void>onLoad(){
    super.onLoad();
    debugMode=true;
  }
  @override
  Color backgroundColor(){
    return Colors.green;
  }

}