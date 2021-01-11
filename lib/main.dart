import 'dart:math';

import 'package:among_us/configs/constants.dart';
import 'package:among_us/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return MaterialApp(
      color: Colors.black,
      key: const Key('Material App'),
      title: 'Among Us Tracker',
      theme: ThemeData(),
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: AppNavigator.onGenerateRoute,
      builder: (BuildContext context, Widget child) {
        final MediaQueryData data = MediaQuery.of(context);
        final double smallestSize = min(data.size.width, data.size.height);
        final double textScaleFactor = min(
          smallestSize / AppConstants.designScreenSize.width,
          1,
        );

        return MediaQuery(
          data: data.copyWith(textScaleFactor: textScaleFactor),
          child: child,
        );
      },
    );
  }
}
