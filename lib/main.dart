import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout/widget/demos.dart';

import 'widget/overflowbox.dart';
import 'widget/understanding_constraints.dart';

void main() {
  // runApp(DevicePreview(builder: (_) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        // color: Colors.amber,
        home: Scaffold(
          // backgroundColor: Colors.amber,
          body: MyOverFlowBox(),
        ),
        // builder: DevicePreview.appBuilder,
        // locale: DevicePreview.locale(context),
      ),
    );
  }
}
