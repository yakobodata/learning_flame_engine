import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flutter/foundation.dart';
import 'package:go_green/game/go_green_game.dart';
import 'package:go_green/game/sprites/obstacle.dart';
import 'package:go_green/game/sprites/player.dart';

class Bin extends SpriteComponent with HasGameReference<GoGreenGame>,CollisionCallbacks{
  @override
  void onLoad() async {
    sprite = await Sprite.load("recycle_bin.png");
    size = Vector2.all(300);
    position=Vector2(0, (game.size.y/2)-(size.y/2));
    anchor = Anchor.center;
    add(RectangleHitbox());
  }

    @override
  void onCollisionStart(Set<Vector2>intersectionPoints,PositionComponent other){
      if(other is Player && other.position.y>position.y){
        other.removeFromParent();
      }
      super.onCollisionStart(intersectionPoints,other);
    }
}

class BinTrash extends Obstacle{
  BinTrash():super(spritePath:'bin_trash.png');

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ){
    if(other is Player){
      other.removeFromParent();
      //End State set
    }
    super.onCollisionStart(intersectionPoints,other);
  }
}

class BinRecycle extends Obstacle{
  BinRecycle():super(spritePath:'recycle_bin.png');

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ){
    if(other is Player){
      other.removeFromParent();
      debugPrint("Hit Recycling Bin1");
      //Win State set
    }
    super.onCollisionStart(intersectionPoints,other);
  }
}