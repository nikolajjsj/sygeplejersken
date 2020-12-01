import 'package:flutter/material.dart';

class BradenTool extends StatefulWidget {
  const BradenTool({Key key}) : super(key: key);

  @override
  _BradenToolState createState() => _BradenToolState();
}

class _BradenToolState extends State<BradenTool> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // variables

    return Scaffold(
      appBar: AppBar(title: Text('Braden'), centerTitle: true),
      body: Column(),
    );
  }
}
