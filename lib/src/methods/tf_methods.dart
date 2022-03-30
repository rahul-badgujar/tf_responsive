import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

double tfText(double size){
  return size * Media.text;
}

double tfImage(double size){
  return size * Media.image;
}

double tfWidth(double percentage){
  return percentage * Media.width;
}

double tfHeight(double percentage){
  return percentage * Media.height;
}

TfOrientation get tfOrientation => Media.tfOrientation;
TfDeviceType get tfDeviceType => Media.tfDeviceType;