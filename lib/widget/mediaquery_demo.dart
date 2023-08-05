import 'package:flutter/material.dart';

import 'shooping_item.dart';

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
      color: Colors.green,
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
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      FittedBox(
        child: Card(
          color: Colors.white,
          child: Row(
            children: [
              const Text(
                "Understand Without FittedBox",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 200,
                child: Image.asset("assets/screen.jpg"),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget myFittedBox1(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: FittedBox(
      fit: BoxFit.fitHeight,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            height: 300,
            width: 300,
          ),
          Image.asset("assets/img1.jpeg"),
        ],
      ),
    ),
  );
}

Widget myFittedBox2(BuildContext context) {
  return FittedBox(
    child: Row(
      children: [
        Container(
          color: Colors.green,
          height: 300,
          width: 300,
        ),
        Image.asset("assets/img1.jpeg"),
      ],
    ),
  );
}

Widget myPositioned1(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Stack(
      children: [
        Positioned(
          right: 25,
          bottom: 100,
          height: 200,
          width: 200,
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    ),
  );
}

Widget myPositioned(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 30,
          left: 30,
          height: 250,
          width: 250,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.green[300],
            child: const Text(
              'Green',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 60,
          width: 250,
          height: 250,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red[400],
            child: const Text(
              'Red',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: 90,
          width: 250,
          height: 250,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.purple[300],
            child: const Text(
              'Purple',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget myLayoutBuilder(BuildContext context) {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return const Center(
          child: Text('Este é o layout para telas largas!',
              style: TextStyle(fontSize: 30)),
        );
      } else {
        return const Center(
          child: Text('Este é o layout para telas estreitas!',
              style: TextStyle(fontSize: 20)),
        );
      }
    },
  );
}

Widget myConstraints(BuildContext context) {
  return Container(
    color: Colors.red,
    constraints: const BoxConstraints(
      minWidth: 10,
      maxWidth: 100,
      minHeight: 10,
      maxHeight: 100,
    ),
  );
}

Widget myConstraints1(BuildContext context) {
  return Container(
    constraints: const BoxConstraints.expand(),
    color: Colors.red,
    child: const Align(
      alignment: Alignment.bottomRight,
      child: Icon(Icons.star, size: 50),
    ),
  );
}

Widget myConstraints2(BuildContext context) {
  return Container(
    constraints: const BoxConstraints(
      minWidth: 70,
      minHeight: 70,
    ),
    color: Colors.blue,
    child: const Text('Este texto pode se expandir! pode ....! ou nao!!!'),
  );
}

Widget myConstraints3(BuildContext context) {
  return Container(
    constraints: const BoxConstraints(
      maxWidth: 200,
      maxHeight: 200,
    ),
    color: Colors.green,
    child: const Text('Este pode se rrair!'),
  );
}

Widget myConstraints4(BuildContext context) {
  return Container(
    constraints: const BoxConstraints.tightFor(
      width: 100,
      height: 100,
    ),
    color: Colors.red,
    child: const Text('Este texto sempre terá 100x100 pixels!'),
  );
}

Widget myConstraints5(BuildContext context) {
  return Container(
    constraints: const BoxConstraints.expand(),
    color: Colors.yellow,
    child: const Text('Este texto vai preencher todo o espaço disponível!'),
  );
}

Widget myListView(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 150, maxWidth: 400),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://img.freepik.com/fotos-gratis/um-leao-com-uma-juba-de-arco-iris-e-olhos-azuis_1340-39421.jpg?w=2000'),
                const SizedBox(height: 8),
                const Text(
                  'Titulo do cartão',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Descrição do cartão, que pode ser um pouco mais longa e envolver várias linhas de texto.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget myAnimatedContainer(BuildContext context, ShoppingItem item) {
  return SafeArea(
    child: AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: item.isBought ? 200 : 100,
      constraints: const BoxConstraints(
        minWidth: 150,
        maxWidth: 400,
        minHeight: 100,
        maxHeight: 200,
      ),
      child: Card(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(child: Image.network('https://via.placeholder.com/150')),
              const SizedBox(height: 8),
              Text(
                item.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              if (item.isBought)
                Text(
                  item.description,
                  style: const TextStyle(fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget myOverflowBox(BuildContext context) {
  return Container(
    color: Colors.red,
    child: OverflowBox(
      maxHeight: 200,
      maxWidth: 200,
      child: Container(
        color: Colors.blue,
        width: 300,
        height: 300,
      ),
    ),
  );
}
