import 'package:flutter/material.dart';

class BmiTool extends StatefulWidget {
  const BmiTool({Key key}) : super(key: key);

  @override
  _BmiToolState createState() => _BmiToolState();
}

class _BmiToolState extends State<BmiTool> {
  // variables
  int _height = 170;
  int _weight = 70;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    double _bmi = _weight / ((_height / 100) * (_height / 100));

    return Scaffold(
      appBar: AppBar(title: Text('BMI score'), centerTitle: true),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                Text('Højde', style: textTheme.titleLarge),
                Text('$_height cm', style: textTheme.headlineSmall),
                Slider(
                  value: _height.toDouble(),
                  onChanged: (val) => setState(() => _height = val.toInt()),
                  min: 50.0,
                  max: 220,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Vægt', style: textTheme.titleLarge),
                Text('$_weight kg', style: textTheme.headlineSmall),
                Slider(
                  value: _weight.toDouble(),
                  onChanged: (val) => setState(() => _weight = val.toInt()),
                  min: 40,
                  max: 150,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text(
                  'Normal vægt',
                  style: textTheme.titleLarge,
                ),
                Text(_bmi.toStringAsFixed(1), style: textTheme.displayLarge),
                Text(
                  'Moderat risiko for at udvikle hjertesygdomme, højt blodtryk, slagtilfælde, diabetes',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
