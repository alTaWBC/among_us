import 'package:among_us/configs/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension BuildContextResponsive on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get iconSize => IconTheme.of(this).size;
  EdgeInsets get padding => MediaQuery.of(this).padding;

  double responsive(double size, {Axis axis = Axis.horizontal}) {
    final double currentSize = axis == Axis.horizontal ? screenSize.width : screenSize.height;
    final double designSize = axis == Axis.horizontal ? AppConstants.designScreenSize.width : AppConstants.designScreenSize.height;

    return size * currentSize / designSize;
  }

  void showModal(Widget child) {
    showModalBottomSheet<void>(
      context: this,
      builder: (BuildContext context) => child,
      backgroundColor: Colors.transparent,
    );
  }
}
