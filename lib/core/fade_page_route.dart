import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder<dynamic> {
  FadeRoute({this.page})
      : super(
          pageBuilder: (_, __, ___) => page,
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
        );

  final Widget page;
}
