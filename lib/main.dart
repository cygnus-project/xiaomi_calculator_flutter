import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: XiaomiCalculator(),
    );
  }
}

class XiaomiCalculator extends StatelessWidget {
  const XiaomiCalculator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Icon(Icons.compare_arrows),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text(
                        'Calculator',
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                      flex: 3,
                      child: Text(
                        'Life',
                        textAlign: TextAlign.center,
                      )),
                  Expanded(
                      flex: 3,
                      child: Text(
                        'Finance',
                        textAlign: TextAlign.center,
                      )),
                  Expanded(flex: 2, child: Icon(Icons.more_vert)),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Text('0')
            ),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              flex: 6,
              child: GridView.count(
                crossAxisSpacing: 10,
                crossAxisCount: 4,
                children: <Widget>[
                  CalculatorKey(
                    'AC',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey(
                    '<-',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey(
                    '%',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey(
                    '/',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey('7'),
                  CalculatorKey('8'),
                  CalculatorKey('9'),
                  CalculatorKey(
                    'x',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey('4'),
                  CalculatorKey('5'),
                  CalculatorKey('6'),
                  CalculatorKey(
                    '-',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey('1'),
                  CalculatorKey('2'),
                  CalculatorKey('3'),
                  CalculatorKey(
                    '+',
                    textColor: Colors.deepOrange,
                  ),
                  CalculatorKey('P'),
                  CalculatorKey('0'),
                  CalculatorKey('.'),
                  CalculatorKey(
                    '=',
                    textColor: Colors.deepOrange,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorKey extends StatelessWidget {
  final String keyName;
  final Color textColor;
  const CalculatorKey(
    this.keyName, {
    this.textColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        print('Inkwell tap');
      },
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Center(
          child: Text(
            keyName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor == null ? Colors.black : textColor,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
