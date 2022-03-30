import 'package:flutter/material.dart';
import 'package:tf_responsive/src/methods/tf_methods.dart';
import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

class TfSizeBuilder extends StatelessWidget {

  ///
  /// Widget to implement different UI for different screen sizes.
  ///
  /// [mobileBuilder]: Widget function that will be called for mobile screen sizes.
  /// [tabletBuilder]: Widget function that will be called for tablet screen sizes.
  /// [desktopBuilder]: Widget function that will be called for desktop screen sizes.
  ///

  const TfSizeBuilder(
      {Key? key,
      required this.mobileBuilder,
      required this.tabletBuilder,
      required this.desktopBuilder})
      : super(key: key);

  /// Widget function that will be called for mobile screen sizes
  final Widget Function() mobileBuilder;

  /// Widget function that will be called for tablet screen sizes
  final Widget Function() tabletBuilder;

  /// Widget function that will be called for desktop screen sizes
  final Widget Function() desktopBuilder;

  @override
  Widget build(BuildContext context) {

    // check if the device is mobile and in portrait mode
    // if true then return mobile widget
    // else check if the device is tablet and in portrait mode
    // if true then return tablet widget
    // else display desktop widget
    if (Media.tfDeviceType == TfDeviceType.mobile &&
        tfOrientation == TfOrientation.portrait) {
      return mobileBuilder();
    } else if (Media.tfDeviceType == TfDeviceType.tablet &&
        tfOrientation == TfOrientation.portrait) {
      return tabletBuilder();
    } else {
      return desktopBuilder();
    }
  }
}
