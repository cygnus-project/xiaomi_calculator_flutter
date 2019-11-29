import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xiaomi Calculator Clone',
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
            ActionsBar(),
            ResultsSpace(),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            CalculatorKeyGrid(),
          ],
        ),
      ),
    );
  }
}

class ResultsSpace extends StatelessWidget {
  const ResultsSpace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Align(
            alignment: Alignment.bottomRight,
            child: Text(
              ' 0 ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 64),
            )));
  }
}

class ActionsBar extends StatelessWidget {
  const ActionsBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
              )),
          Expanded(
              flex: 3,
              child: Text(
                'Life',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          Expanded(
              flex: 3,
              child: Text(
                'Finance',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20),
              )),
          Expanded(flex: 2, child: Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}

class CalculatorKeyGrid extends StatelessWidget {
  const CalculatorKeyGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: GridView.count(
        crossAxisSpacing: 20,
        crossAxisCount: 4,
        children: <Widget>[
          CalculatorKey(
              Text(
                'AC',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              ),
              'clean'),
          CalculatorKey(
              Icon(
                Icons.backspace,
                color: Colors.deepOrangeAccent,
              ),
              'delete'),
          CalculatorKey(
              Text(
                '%',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              ),
              'percentage'),
          CalculatorKey(
              Image.network(
                'https://png.pngtree.com/svg/20161129/division_1251695.png',
                color: Colors.deepOrangeAccent,
                width: 21,
                height: 21,
              ),
              'divide'),
          CalculatorKey(
              Text(
                '7',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '7'),
          CalculatorKey(
              Text(
                '8',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '8'),
          CalculatorKey(
              Text(
                '9',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '9'),
          CalculatorKey(
              Text(
                'x',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              ),
              'multipli'),
          CalculatorKey(
              Text(
                '4',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '4'),
          CalculatorKey(
              Text(
                '5',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '5'),
          CalculatorKey(
              Text(
                '6',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '6'),
          CalculatorKey(
              Text(
                '-',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              ),
              'subtract'),
          CalculatorKey(
              Text(
                '1',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '1'),
          CalculatorKey(
              Text(
                '2',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '2'),
          CalculatorKey(
              Text(
                '3',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '3'),
          CalculatorKey(
              Text(
                '+',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),
              ),
              'add'),
          CalculatorKey(
              Icon(
                Icons.crop_rotate,
                color: Colors.deepOrangeAccent,
              ),
              'mode'),
          CalculatorKey(
              Text(
                '0',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '0'),
          CalculatorKey(
              Text(
                '.',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              '.'),
          CalculatorKey(
            Text(
              '=',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            'result',
            foreColor: Colors.deepOrangeAccent,
          ),
        ],
      ),
    );
  }
}

class CalculatorKey extends StatelessWidget {
  final Widget widget;
  final Color color;
  final Color foreColor;
  final String internalCommand;
  const CalculatorKey(
    this.widget,
    this.internalCommand, {
    this.color,
    this.foreColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      splashColor: foreColor == null ? Colors.black12 : Colors.orange,
      onTap: () {
        print('${internalCommand.toString()}');
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(shape: BoxShape.circle, color: foreColor),
        child: Center(child: widget),
      ),
    );
  }
}
