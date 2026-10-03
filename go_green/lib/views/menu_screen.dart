import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_green/router.dart';
import 'package:go_router/go_router.dart';

class MenuScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Main Menu",
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
               child: const Text("Start Game"),
               )
          ],
        ),
      ),
    );
  }
}
