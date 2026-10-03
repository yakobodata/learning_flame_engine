import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_green/router.dart';
import 'package:go_router/go_router.dart';

class EndScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<EndScreen> createState() => _EndScreenState();
}

class _EndScreenState extends State<EndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Game Over",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
        
                context.goNamed(AppRoute.game.name);
              },
               child: const Text("Play Again"),
               ),
            TextButton(
              onPressed: (){
        
                context.goNamed(AppRoute.menu.name);
              },
               child: const Text("Main Menu"),
               )   
          ],
        ),
      ),
    );
  }
}
