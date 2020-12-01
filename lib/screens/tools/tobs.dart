import 'package:flutter/material.dart';

class TobsTool extends StatefulWidget {
  const TobsTool({Key key}) : super(key: key);

  @override
  _TobsToolState createState() => _TobsToolState();
}

class _TobsToolState extends State<TobsTool> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // variables

    return Scaffold(
      appBar: AppBar(title: Text('TOBS'), centerTitle: true),
      body: Column(),
    );
  }
}
