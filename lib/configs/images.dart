import 'package:flutter/cupertino.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String filename) : super('$_imagePath/$filename');
}

class AppImages {
  static const _Image green = _Image('green.png');
  static const _Image black = _Image('black.png');
  static const _Image pink = _Image('pink.png');
  static const _Image cyan = _Image('cyan.png');
  static const _Image blue = _Image('blue.png');
  static const _Image lime = _Image('lime.png');
  static const _Image red = _Image('red.png');
  static const _Image brown = _Image('brown.png');
  static const _Image orange = _Image('orange.png');
  static const _Image purple = _Image('purple.png');
  static const _Image white = _Image('white.png');
  static const _Image yellow = _Image('yellow.png');
  static const _Image greenDead = _Image('green_dead.png');
  static const _Image blackDead = _Image('black_dead.png');
  static const _Image pinkDead = _Image('pink_dead.png');
  static const _Image cyanDead = _Image('cyan_dead.png');
  static const _Image blueDead = _Image('blue_dead.png');
  static const _Image limeDead = _Image('lime_dead.png');
  static const _Image redDead = _Image('red_dead.png');
  static const _Image brownDead = _Image('brown_dead.png');
  static const _Image orangeDead = _Image('orange_dead.png');
  static const _Image purpleDead = _Image('purple_dead.png');
  static const _Image whiteDead = _Image('white_dead.png');
  static const _Image yellowDead = _Image('yellow_dead.png');
  static const _Image kill = _Image('kill.png');
  static const _Image use = _Image('use.png');
  //TODO: get Map Image

  static Future<void> precachedAssets(BuildContext context) async {
    await precacheImage(green, context);
    await precacheImage(black, context);
    await precacheImage(pink, context);
    await precacheImage(cyan, context);
    await precacheImage(blue, context);
    await precacheImage(lime, context);
    await precacheImage(red, context);
    await precacheImage(brown, context);
    await precacheImage(orange, context);
    await precacheImage(purple, context);
    await precacheImage(white, context);
    await precacheImage(yellow, context);
    await precacheImage(greenDead, context);
    await precacheImage(blackDead, context);
    await precacheImage(pinkDead, context);
    await precacheImage(cyanDead, context);
    await precacheImage(blueDead, context);
    await precacheImage(limeDead, context);
    await precacheImage(redDead, context);
    await precacheImage(brownDead, context);
    await precacheImage(orangeDead, context);
    await precacheImage(purpleDead, context);
    await precacheImage(whiteDead, context);
    await precacheImage(yellowDead, context);
    await precacheImage(kill, context);
  }
}
