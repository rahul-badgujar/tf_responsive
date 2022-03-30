import 'package:flutter/material.dart';
import 'package:tf_responsive/src/methods/tf_methods.dart';
import 'package:tf_responsive/src/utils/enums.dart';
import 'package:tf_responsive/src/utils/media.dart';

class TfSizeBuilder extends StatelessWidget {
  const TfSizeBuilder(
      {Key? key,
      required this.mobileBuilder,
      required this.tabletBuilder,
      required this.desktopBuilder})
      : super(key: key);

  final Widget Function() mobileBuilder;
  final Widget Function() tabletBuilder;
  final Widget Function() desktopBuilder;

  @override
  Widget build(BuildContext context) {
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
