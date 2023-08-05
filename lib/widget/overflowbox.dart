import 'package:flutter/material.dart';

class MyOverFlowBox extends StatelessWidget {
  const MyOverFlowBox({super.key});

  @override
  Widget build(BuildContext context) {
    return example1(context);
  }

  Widget example1(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 200.0,
      height: 200.0,
      child: OverflowBox(
        minWidth: 0.0,
        minHeight: 0.0,
        maxWidth: 300.0,
        maxHeight: 300.0,
        child: Container(
          color: Colors.blueAccent,
          width: 300.0,
          height: 300.0,
        ),
      ),
    );
  }
}
