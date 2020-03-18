import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedButton extends StatefulWidget {
  final Color initialBackground;
  final Color finalBackground;
  final Widget child;
  final VoidCallback onTap;

  ExpandedButton(this.child, this.initialBackground, this.finalBackground, {this.onTap});
  @override
  _ExpandedButtonState createState() => _ExpandedButtonState();
}

class _ExpandedButtonState extends State<ExpandedButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _backgroundColor;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _backgroundColor =
        ColorTween(begin: widget.initialBackground, end: widget.finalBackground)
            .animate(_controller);
    _backgroundColor.addListener(() {setState(() {});});
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'button',
      child: Material(
          color: _backgroundColor.value,
          child: InkWell(
            onTap: () {widget.onTap(); Navigator.pop(context);},
            child: Center(child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: widget.child,
            )),
          )
      ),
    );
  }
}
