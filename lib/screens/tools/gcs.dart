import 'package:flutter/material.dart';

class GcsTool extends StatefulWidget {
  const GcsTool({Key key}) : super(key: key);

  @override
  _GcsToolState createState() => _GcsToolState();
}

class _GcsToolState extends State<GcsTool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GCS'), centerTitle: true),
      body: Column(),
    );
  }
}
