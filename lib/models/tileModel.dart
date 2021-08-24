import 'package:flutter/material.dart';

class TileModel {
  String? pic;
  String? name;
  String? time;
  String? status;
  Color? statusColor;
  bool? swipeFromRight;
  Color? statusTextColor;
  String? swipeText;
  double? stretchExtent;

  TileModel({
    this.name,
    this.status,
    this.time,
    this.pic,
    this.statusColor,
    this.swipeFromRight,
    this.swipeText,
    this.statusTextColor,
    this.stretchExtent,
  });
}
