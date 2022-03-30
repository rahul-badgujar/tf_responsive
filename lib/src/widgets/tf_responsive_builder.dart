import 'package:flutter/material.dart';
import 'package:tf_responsive/src/methods/tf_methods.dart';
import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

class TfResponsiveBuilder extends StatelessWidget {


  ///
  /// Wrapper widget to detect change in screen orientation and to configure sizing values
  ///
  /// [TfDeviceType] : this will return the device type. It includes 3 values i.e. mobile, tablet, desktop
  /// [TfOrientation] : this will return the device orientation. It includes 2 values i.e landscape and portrait
  ///
  const TfResponsiveBuilder({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext, TfDeviceType, TfOrientation) builder;

  @override
  Widget build(BuildContext context) {
    // Layout and Orientation builder to detect and configure sizing values
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            Media().init(constraints, orientation);
            return builder(context, tfDeviceType, tfOrientation);
          });
      });
  }
}
