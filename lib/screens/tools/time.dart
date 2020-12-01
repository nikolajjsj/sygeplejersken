import 'package:flutter/material.dart';

class TimeTool extends StatefulWidget {
  const TimeTool({Key key}) : super(key: key);

  @override
  _TimeToolState createState() => _TimeToolState();
}

class _TimeToolState extends State<TimeTool> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // variables

    return Scaffold(
      appBar: AppBar(title: Text('TIME - modellen'), centerTitle: true),
      body: Column(),
    );
  }
}
