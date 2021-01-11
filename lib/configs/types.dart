import 'dart:ui';

import 'package:among_us/configs/colors.dart';
import 'package:flutter/material.dart';

class CrewType {
  CrewType({@required this.color});
  final Color color;
}

List<CrewType> types = <CrewType>[
  CrewType(color: AppColors.red),
  CrewType(color: AppColors.blue),
  CrewType(color: AppColors.green),
  CrewType(color: AppColors.orange),
  CrewType(color: AppColors.yellow),
  CrewType(color: AppColors.black),
  CrewType(color: AppColors.purple),
  CrewType(color: AppColors.brown),
  CrewType(color: AppColors.cyan),
  CrewType(color: AppColors.pink),
  CrewType(color: AppColors.white),
  CrewType(color: AppColors.lime),
  CrewType(color: AppColors.tan),
  CrewType(color: AppColors.fortegreen),
];
