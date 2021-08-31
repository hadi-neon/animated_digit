import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AnimatedDigitWidgetExample());
}

class AnimatedDigitWidgetExample extends StatefulWidget {
  AnimatedDigitWidgetExample({Key key}) : super(key: key);

  @override
  _AnimatedDigitWidgetExampleState createState() =>
      _AnimatedDigitWidgetExampleState();
}

class _AnimatedDigitWidgetExampleState
    extends State<AnimatedDigitWidgetExample> {
  AnimatedDigitController _controller = AnimatedDigitController(520);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _add() {
    _controller.addValue(1314.18);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Digit Widget Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedDigitWidget(
                controller: _controller,
                textStyle: TextStyle(color: Colors.pink[200], fontSize: 30),
                fractionDigits: 0,
                enableDigitSplit: false,
                duration: const Duration(seconds: 1),
              ),
              SizedBox(height: 20),
              AnimatedDigitWidget(
                controller: _controller,
                textStyle: TextStyle(color: Colors.orange[200], fontSize: 30),
                fractionDigits: 0,
                enableDigitSplit: true,
                duration: const Duration(milliseconds: 500),
              ),
              SizedBox(height: 20),
              AnimatedDigitWidget(
                controller: _controller,
                textStyle: TextStyle(color: Colors.green, fontSize: 30),
                fractionDigits: 2,
                enableDigitSplit: true,
                digitSplitSymbol: "'",
                duration: const Duration(milliseconds: 500),
              ),
              SizedBox(height: 20),
              AnimatedDigitWidget(
                controller: _controller,
                textStyle: TextStyle(color: Colors.cyan[200], fontSize: 30),
                fractionDigits: 2,
                enableDigitSplit: true,
                duration: const Duration(seconds: 1),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _add,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
