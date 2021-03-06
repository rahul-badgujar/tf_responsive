import 'package:flutter/material.dart';
import 'package:tf_responsive/tf_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Add TfResponsiveBuilder to root to detect and configure sizing methods
    return TfResponsiveBuilder(builder:
        (BuildContext context, TfDeviceType type, TfOrientation orientation) {
      return const MaterialApp(
        home: Home(),
      );
    });
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          tfDeviceType.name,
          style: TextStyle(
            fontSize: tfText(
                3), // use tfText() to calculate the text size depending on screen size
          ),
        ),
      ),
      body: TfSizeBuilder(
        desktopBuilder: () {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10,
              childAspectRatio: 1,
              crossAxisSpacing: tfWidth(1),
              mainAxisSpacing: tfHeight(1),
            ),
            itemBuilder: (context, index) {
              return Container(
                width: tfWidth(9),
                height: tfHeight(9),
                color: Colors.black,
              );
            },
          );
        },
        mobileBuilder: () {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
              crossAxisSpacing: tfWidth(1),
              mainAxisSpacing: tfHeight(1),
            ),
            itemBuilder: (context, index) {
              return Container(
                width: tfWidth(19),
                height: tfHeight(19),
                color: Colors.black,
              );
            },
          );
        },
        tabletBuilder: () {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
              crossAxisSpacing: tfWidth(1),
              mainAxisSpacing: tfHeight(1),
            ),
            itemBuilder: (context, index) {
              return Container(
                width: tfWidth(13),
                height: tfHeight(13),
                color: Colors.black,
              );
            },
          );
        },
      ),
    );
  }
}
