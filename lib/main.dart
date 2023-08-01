import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/widget/mediaquery_demo.dart';

void main() {
  runApp(DevicePreview(builder: (_) {
    return const MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.amber,

      home: Scaffold(
        // backgroundColor: Colors.amber,
        body: SafeArea(
          child: myFittedBox(context),
        ),
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
    );
  }
}
