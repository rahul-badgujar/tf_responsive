import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

///
/// Function to calculate text size depending on screen size
///
double tfText(double size){
  return size * Media.text;
}

///
/// Function to calculate image size depending on screen size
///
double tfImage(double size){
  return size * Media.image;
}

///
/// Function to calculate width using percentage
///
double tfWidth(double percentage){
  return percentage * Media.width;
}

///
/// Function to calculate Height using percentage
///
double tfHeight(double percentage){
  return percentage * Media.height;
}

///
/// Function to get device orientation
///
TfOrientation get tfOrientation => Media.tfOrientation;

///
/// Function to get device type
///
TfDeviceType get tfDeviceType => Media.tfDeviceType;