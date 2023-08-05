import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget container(BuildContext context) {
  return Stack(children: [
    Align(
      alignment: const Alignment(0, 0.81),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    ),
    Positioned(
      // left: 25,
      right: 25,
      bottom: 100,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    ),
  ]);
}

Widget example1(BuildContext context) {
  return Container(
    color: Colors.red,
    width: 200,
    height: 100,
  );
}

Widget example3(BuildContext context) {
  return Center(
    child: Container(
      padding: const EdgeInsets.all(20),
      color: Colors.red,
      child: Container(
        width: 30,
        height: 30,
        color: Colors.green,
      ),
    ),
  );
}

Widget example9(BuildContext context) {
  return ConstrainedBox(
    constraints: const BoxConstraints(
      minWidth: 70,
      minHeight: 70,
      maxWidth: 150,
      maxHeight: 150,
    ),
    child: Container(
      padding: const EdgeInsets.all(20),
      color: Colors.red,
    ),
  );
}

Widget example10(BuildContext context) {
  return Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(
        // padding: const EdgeInsets.all(20),
        width: 10, height: 10,
        color: Colors.red,
      ),
    ),
  );
}

Widget example11(BuildContext context) {
  return Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(
        // padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
      ),
    ),
  );
}

Widget example12(BuildContext context) {
  return Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(
        // padding: const EdgeInsets.all(20),
        width: 80,
        height: 80,
        color: Colors.red,
      ),
    ),
  );
}

Widget example13(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      constraints: BoxConstraints(
        minWidth: 0,
        minHeight: 0,
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: 200,
      ),
      child: Row(
        children: [
          Container(
            // criar uma borda
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget cart(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(2),
            constraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0,
              maxWidth: 180,
              maxHeight: 180,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                robotoText(
                    context, 'LOJA 1:', 8, FontWeight.bold, Colors.black),
                robotoText(context, 'Praça Monsenhor Ernesto Cavicchiolli, 284',
                    6, FontWeight.normal, Colors.black),
                robotoText(context, '(35)3535-3636', 6, FontWeight.normal,
                    Colors.black),
                const SizedBox(height: 10),
                robotoText(
                    context, 'LOJA 2:', 8, FontWeight.bold, Colors.black),
                robotoText(context, 'Rua Ary Bastos Siqueira, 316', 6,
                    FontWeight.normal, Colors.black),
                robotoText(context, '(35)3535-3737', 6, FontWeight.normal,
                    Colors.black),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:
                              40.0, // width and height can be whatever size you want
                          height: 40.0,
                          child: Image.asset('assets/images/iconezap.jpg',
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        robotoText(context, '(35)3535-3737', 8,
                            FontWeight.normal, Colors.black),
                        robotoText(context, '(35)3535-3737', 8,
                            FontWeight.normal, Colors.black),
                        robotoText(context, '(35)3535-3737', 8,
                            FontWeight.normal, Colors.black),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/imagemracao.jpg',
              width: 100,
              height: 150,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget robotoText(
  BuildContext context,
  String text,
  double fontSize,
  FontWeight fontWeight,
  final Color color,
) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Roboto',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var isPortrait =
            MediaQuery.of(context).orientation == Orientation.portrait;
        var fontSize = isPortrait ? 8.0 : 10.0;
        return SizedBox(
          height: 200,
          child: Row(
            children: <Widget>[
              Container(
                width: constraints.maxWidth * 0.40,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    robotoText(context, 'LOJA 1:', fontSize, FontWeight.bold,
                        Colors.black),
                    robotoText(
                        context,
                        'Praça Monsenhor Ernesto Cavicchiolli, 284',
                        fontSize,
                        FontWeight.normal,
                        Colors.black),
                    robotoText(context, '(35)3535-3636', fontSize,
                        FontWeight.normal, Colors.black),
                    // const SizedBox(height: 10),
                    robotoText(context, 'LOJA 2:', fontSize, FontWeight.bold,
                        Colors.black),
                    robotoText(context, 'Rua Ary Bastos Siqueira, 316',
                        fontSize, FontWeight.normal, Colors.black),
                    robotoText(context, '(35)3535-3737', fontSize,
                        FontWeight.normal, Colors.black),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width:
                                  40.0, // width and height can be whatever size you want
                              height: 40.0,
                              child: Image.asset('assets/images/iconezap.jpg',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            robotoText(context, '(35)3535-3737', 8,
                                FontWeight.normal, Colors.black),
                            robotoText(context, '(35)3535-3737', 8,
                                FontWeight.normal, Colors.black),
                            robotoText(context, '(35)3535-3737', 8,
                                FontWeight.normal, Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: constraints.maxWidth * 0.60,
                color: Colors.red,
                child: Center(
                  child: Image.asset(
                    'assets/images/imagemracao.jpg',
                    width: 100,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
