
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:go_green/constants.dart';
import 'package:go_green/game/go_green_game.dart';

class Player extends SpriteComponent with HasGameReference<GoGreenGame>{
  @override
  void onLoad() async {
    sprite = await Sprite.load("player.png");
    size = Vector2.all(100);
    position=Vector2(0, -(gameHeight/2)+(size.y/2));
    anchor = Anchor.center;
    angle = 0.5;
    add(RectangleHitbox());
  }
  

  @override
  void update(double dt) {
    super.update(dt);


    //This is the code that makes the code to go down
    double newY = position.y + (dt * 100);

    //Lets add another check which makes the player doesnot go beyond 25% of the screen
    if(newY > -(gameHeight/4)){
      newY=-(gameHeight/4);
    }
    //This is the code that ensures that the code stays down
    //When its moving down
    if (newY > (game.size.y / 2) - (size.y / 2)) {
      newY = (game.size.y / 2) - (size.y / 2);
    }

    position.y = newY;
  }

  void move(double deltaX){
    double newX = position.x + deltaX;
    double minX = -(game.size.x/2)+size.x/2;//Left Boundary
    double maxX =  (game.size.x)-size.x/2;// Right Boundary
    newX = newX.clamp(minX, maxX);
    position.x = newX;
  }

}