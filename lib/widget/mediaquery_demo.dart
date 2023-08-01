import 'package:flutter/material.dart';

Container mediaQueryDemo(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.5,
    height: MediaQuery.of(context).size.height * 0.5,
    color: Colors.red,
  );
}

Widget expandedColumnDemo(BuildContext context) {
  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        color: const Color.fromARGB(255, 233, 30, 186),
      ),
      Expanded(
        child: Container(
          color: const Color.fromARGB(255, 40, 165, 44),
          height: 500, // sempre ignorado devido o Expanded.
        ),
      ),
    ],
  );
}

Widget expandedRowDemo(BuildContext context) {
  return Row(
    // mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.10,
        color: Colors.red,
      ),
      Expanded(
        child: Container(
          width: 100, // vai ignorar a largura.
          height: MediaQuery.of(context).size.height * 0.10,
          color: Colors.blue,
        ),
      ),
    ],
  );
}

Widget expandedFlexDemo(BuildContext context) {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.green,
        ),
      ),
    ],
  );
}

Widget wrapDemo(BuildContext context) {
  return Wrap(
    direction: Axis.horizontal,
    spacing: 18.0, // gap between adjacent chips
    runSpacing: 4.0, // gap between lines
    verticalDirection: VerticalDirection.up,
    alignment: WrapAlignment.end,
    children: <Widget>[
      myContainer(context, 'A'),
      myContainer(context, 'B'),
      myContainer(context, 'C'),
      myContainer(context, 'D'),
      myContainer(context, 'E'),
    ],
  );
}

Widget chipColorDemo(BuildContext context) {
  return Chip(
    avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade900, child: const Text('AH')),
    label: const Text('Hamilton'),
  );
}

Widget orientation(BuildContext context) {
  return OrientationBuilder(
    builder: (context, orientation) {
      return orientation == Orientation.portrait
          ? portraitMode(context)
          : landScapeMode(context);
    },
  );
}

Widget myContainer(BuildContext context, String txt) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 50,
    height: 50,
    color: Colors.yellow,
    child: Center(child: Text(txt)),
  );
}

Widget myContainerAlign(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  );
}

Widget myAlign(BuildContext context) {
  return Align(
    alignment: Alignment.topCenter,
    child: Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    ),
  );
}

Widget landScapeMode(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      const Expanded(child: FlutterLogo(size: 140.0)),
      Expanded(
        flex: 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 100, width: 250, child: Container(color: Colors.red)),
            SizedBox(
                height: 100, width: 250, child: Container(color: Colors.green)),
          ],
        ),
      )
    ],
  );
}

Widget portraitMode(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        const FlutterLogo(size: 140.0),
        // const SizedBox(width: 100),
        SizedBox(
            height: 100, width: 300, child: Container(color: Colors.yellow)),
        SizedBox(height: 100, width: 300, child: Container(color: Colors.blue)),
      ],
    ),
  );
}

Widget myStack(BuildContext context) {
  return Stack(
    children: [
      Align(
        alignment: const Alignment(-0.1, -0.91),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
      Align(
        alignment: const Alignment(-0.90, 0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      Align(
        alignment: const Alignment(0.5, 0.19),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ),
    ],
  );
}

Widget myFittedBox(BuildContext context) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.topLeft,
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Image.asset('assets/screen.jpg'),
    ),
  );
}
