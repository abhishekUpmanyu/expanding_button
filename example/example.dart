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
            // child <Widget>
            child: Text('Finesse', style: TextStyle(color: Colors.white)),
            // onTap <VoidCallback>
            onTap: () {print('expand');},
            // onTapWhenExpanded <VoidCallback>
            onTapWhenExpanded: () {print('collapse');},
            // background <Color>
            background: Colors.blue,
            // backgroundAfterAnimation <Color>
            backgroundAfterAnimation: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
