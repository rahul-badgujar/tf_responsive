import 'package:flutter/material.dart';
import 'package:tf_responsive/src/methods/tf_methods.dart';
import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

class TfResponsiveBuilder extends StatelessWidget {
  const TfResponsiveBuilder({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext, TfDeviceType, TfOrientation) builder;

  @override
  Widget build(BuildContext context) {
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
