import 'package:flutter/material.dart';

class MedicinTool extends StatefulWidget {
  const MedicinTool({Key key}) : super(key: key);

  @override
  _MedicinToolState createState() => _MedicinToolState();
}

class _MedicinToolState extends State<MedicinTool> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // variables

    return Scaffold(
      appBar: AppBar(title: Text('Medicinregning'), centerTitle: true),
      body: Column(),
    );
  }
}
