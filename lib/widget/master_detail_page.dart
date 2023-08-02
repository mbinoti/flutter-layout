import 'package:flutter/material.dart';

class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({super.key});

  @override
  State<MasterDetailPage> createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var isLargeScreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }
          return Row(
            children: <Widget>[],
          );
        },
      ),
    );
  }
}
