import 'package:flutter/material.dart';
import 'package:expanding_button/expanding_button.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanding Button Example'),
      ),
      body: Material(
        child: Center(
          // Using the Expanding Button
          child: ExpandingButton(
            child: Text('Finesse', style: TextStyle(color: Colors.white)),
            onTap: () {print('expand');},
            onTapWhenExpanded: () {print('collapse');},
            background: Colors.blue,
            backgroundAfterAnimation: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
