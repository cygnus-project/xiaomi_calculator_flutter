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
              child: ActionsBar(),
            ),
            ResultsSpace(),
            Divider(
              color: Colors.grey,
            ),
            Expanded(
              flex: 6,
              child: CalculatorKeyGrid(),
            ),
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
    return Expanded(flex: 3, child: Align(alignment: Alignment.bottomRight,child: Text(' 0 ', textAlign: TextAlign.center,style: TextStyle(fontSize: 64),)));
  }
}

class ActionsBar extends StatelessWidget {
  const ActionsBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class CalculatorKeyGrid extends StatelessWidget {
  const CalculatorKeyGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        CalculatorKey(
          Text('AC',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),)
        ),
        CalculatorKey(
          Icon(Icons.backspace, color: Colors.deepOrangeAccent,)
        ),
        CalculatorKey(
          Text('%',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),),
        ),
        CalculatorKey(
          Image.network('https://png.pngtree.com/svg/20161129/division_1251695.png',color: Colors.deepOrangeAccent,width: 21, height: 21,)
        ),
        
        CalculatorKey(
          Text('7',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('8',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('9',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('x',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),),
        ),
        CalculatorKey(
          Text('4',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('5',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('6',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('-',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),),
        ),
        CalculatorKey(
          Text('1',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('2',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('3',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('+',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 30),),
        ),
        CalculatorKey(
          Icon(Icons.crop_rotate, color: Colors.deepOrangeAccent,)
        ),
        CalculatorKey(
          Text('0',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('.',
          style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        CalculatorKey(
          Text('=',
          style: TextStyle(color: Colors.white, fontSize: 30),),foreColor: Colors.deepOrangeAccent,
        ),
      ],
    );
  }
}

class CalculatorKey extends StatelessWidget {
  final Widget widget;
  final Color color;
  final Color foreColor;
  const CalculatorKey(this.widget,{
    this.color,
    this.foreColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        print('Inkwell tap');
      },
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(shape: BoxShape.circle, color: foreColor),
        child: Center(
          child: widget
          ),
        ),
    );
  }
}
