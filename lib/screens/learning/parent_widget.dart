import 'package:flutter/material.dart';
import 'package:task_mis_app/screens/learning/tap_box_b.dart';
import 'package:task_mis_app/screens/learning/tap_box_c.dart';

class ParentWidget extends StatefulWidget {
  const ParentWidget({Key? key}) : super(key: key);

  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapBoxC(
        active: _active,
        onChanged: _handleTapBoxChanged
      ),
    );
  }
}

