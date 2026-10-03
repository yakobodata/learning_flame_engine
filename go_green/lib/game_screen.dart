
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_green/constants.dart';
import 'package:go_green/game/go_green_game.dart';
import 'package:go_green/router.dart';
import 'package:go_router/go_router.dart';

class GameScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  
  late final GoGreenGame game;

  @override
  void initState(){
    super.initState();
    game = GoGreenGame();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: FittedBox(
            child: SafeArea(
              child: SizedBox(
                width:gameWidth,
                height:gameHeight,
                child:GameWidget(game:game),
              ),
            ),
          ),
        )
      );
  }
}