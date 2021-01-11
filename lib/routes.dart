// imports
import 'package:among_us/core/fade_page_route.dart';
import 'package:among_us/ui/screens/test/test.dart';
import 'package:flutter/material.dart';

enum Routes { home, mapInfo, maps, splash }

class _Paths {
  static const String splash = '/';
  static const String home = '/home';
  static const String maps = 'home/maps';
  static const String mapInfo = 'home/mapInfo';

  static const Map<Routes, String> pathMap = <Routes, String>{
    Routes.splash: _Paths.splash,
    Routes.home: _Paths.home,
    Routes.maps: _Paths.maps,
    Routes.mapInfo: _Paths.mapInfo,
  };

  static String of(Routes route) => pathMap[route];
}

mixin AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final dynamic arguments = settings.arguments;
    switch (settings.name) {
      // TODO(wbc): Create a Custom Router
      case _Paths.splash:
      case _Paths.maps:
      case _Paths.mapInfo:
      case _Paths.home:
      default:
        return FadeRoute(page: const Test());
    }
  }

  static Future<T> push<T>(Routes route, [T arguments]) => state.pushNamed(_Paths.of(route), arguments: arguments);

  static Future<T> replaceWith<T>(Routes route, [T arguments]) => state.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static void pop() => state.pop();

  static NavigatorState get state => navigatorKey.currentState;
}
