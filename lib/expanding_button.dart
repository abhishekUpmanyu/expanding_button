library expanding_button;

import 'package:expanding_button/expanded_button.dart';
import 'package:flutter/material.dart';

class ExpandingButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;
  final VoidCallback onTapWhenExpanded;
  final Color background;
  final Color backgroundAfterAnimation;

  ExpandingButton(
      {@required this.child,
      this.onTap,
      this.onTapWhenExpanded,
      this.background = Colors.white,
      this.backgroundAfterAnimation = Colors.white});

  @override
  _ExpandingButtonState createState() => _ExpandingButtonState();
}

class _ExpandingButtonState extends State<ExpandingButton> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'button',
      child: Material(
          color: widget.background,
          child: InkWell(
              onTap: () {
                widget.onTap();
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        ExpandedButton(
                          widget.child,
                          widget.background,
                          widget.backgroundAfterAnimation,
                          onTap: widget.onTapWhenExpanded,
                        )));
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: widget.child,
              ))),
    );
  }
}
