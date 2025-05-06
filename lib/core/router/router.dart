import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/screens/home_screen.dart';
import 'package:matule/layers/presentation/screens/notification_screen.dart';
import 'package:matule/layers/presentation/screens/profile_screen.dart';
import 'package:matule/layers/presentation/screens/root_screen.dart';

/// Router
/// Date: 06.05.2025
/// Author: M9M9Ra
/// ----------------------------------------------
class RouterConfigGo {
  static GoRouter get router => GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder:
            (context, state, navigationShell) =>
                RootScreen(statefulNavigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => HomeScreen(),
                name: 'home',
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/notification',
                builder: (context, state) => NotificationScreen(),
                name: 'notification'
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => ProfileScreen(),
                name: 'profile',
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
