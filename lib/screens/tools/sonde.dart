import 'package:flutter/material.dart';

class SondeTool extends StatefulWidget {
  const SondeTool({Key key}) : super(key: key);

  @override
  _SondeToolState createState() => _SondeToolState();
}

class _SondeToolState extends State<SondeTool> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // variables

    return Scaffold(
      appBar: AppBar(title: Text('Sondeernæring'), centerTitle: true),
      body: Column(),
    );
  }
}
