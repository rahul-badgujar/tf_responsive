import 'package:flutter/material.dart';
import 'package:tf_responsive/src/utils/enums.dart';

class Media {
  static late double screenWidth;
  static late double screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static late double text = 0;
  static late double image = 0;
  static late double height = 0;
  static late double width = 0;
  static TfOrientation tfOrientation = TfOrientation.portrait;
  static TfDeviceType tfDeviceType = TfDeviceType.mobile;


  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
      tfOrientation = TfOrientation.portrait;
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
      tfOrientation = TfOrientation.landscape;
    }
    if(constraints.maxWidth <= 640){
      tfDeviceType = TfDeviceType.mobile;
    }else if(constraints.maxWidth > 640 && constraints.maxWidth <= 1007){
      tfDeviceType = TfDeviceType.tablet;
    }else{
      tfDeviceType = TfDeviceType.desktop;
    }

    _blockWidth = screenWidth / 100;
    _blockHeight = screenHeight / 100;

    text = _blockHeight;
    image = _blockWidth;
    height = _blockHeight;
    width = _blockWidth;
  }
}
