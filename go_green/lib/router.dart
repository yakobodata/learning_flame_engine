import 'package:go_green/game_screen.dart';
import 'package:go_green/views/end_screen.dart';
import 'package:go_green/views/menu_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute{
menu,
game,
end,
}

GoRouter goRouter(){
    return GoRouter(
        initialLocation:'/menu',
        routes:<RouteBase>[
            GoRoute(
                path:'/',
                name:AppRoute.game.name,
                pageBuilder:(context,state)=>NoTransitionPage(
                  key: state.pageKey,
                  child: const GameScreen(),
                  )
            ),
            GoRoute(
              path:'/menu',
              name:AppRoute.menu.name,
              pageBuilder: (context,state)=>NoTransitionPage(
                key: state.pageKey,
                child: const MenuScreen(),
                )
              ),
              GoRoute(
              path:'/end',
              name:AppRoute.end.name,
              pageBuilder: (context,state)=>NoTransitionPage<void>(
                key: state.pageKey,
                child: const EndScreen(),
                ),
              ),
        ]
    );
}