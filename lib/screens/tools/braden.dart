import 'package:flutter/material.dart';

class BradenTool extends StatefulWidget {
  const BradenTool({Key key}) : super(key: key);

  @override
  _BradenToolState createState() => _BradenToolState();
}

class _BradenToolState extends State<BradenTool> {
  int sensorisk = 1;
  int fugt = 1;
  int aktivitet = 1;
  int mobilitet = 1;
  int ernaering = 1;
  int gnidning = 1;

  List<String> _sensorisk = [
    "Helt begrænset",
    "Meget begrænset",
    "Lidt begrænset",
    "Ingen svækkelse"
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    int score = sensorisk + fugt + aktivitet + mobilitet + ernaering + gnidning;

    return Scaffold(
      appBar: AppBar(title: Text('Braden'), centerTitle: true),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Text('Score:', style: textTheme.displaySmall),
                Text(
                  '$score',
                  style: textTheme.displayLarge
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Sensorisk perception', style: textTheme.titleLarge),
                Text('${_sensorisk[sensorisk]}',
                    style: textTheme.headlineSmall),
                Slider(
                  value: sensorisk.toDouble(),
                  onChanged: (val) => setState(() => sensorisk = val.toInt()),
                  min: 1,
                  max: 4,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Fugt', style: textTheme.titleLarge),
                Text('$fugt', style: textTheme.headlineSmall),
                Slider(
                  value: fugt.toDouble(),
                  onChanged: (val) => setState(() => fugt = val.toInt()),
                  min: 1,
                  max: 4,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Aktivitet', style: textTheme.titleLarge),
                Text('$aktivitet', style: textTheme.headlineSmall),
                Slider(
                  value: aktivitet.toDouble(),
                  onChanged: (val) => setState(() => aktivitet = val.toInt()),
                  min: 1,
                  max: 4,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Mobilitet', style: textTheme.titleLarge),
                Text('$mobilitet', style: textTheme.headlineSmall),
                Slider(
                  value: mobilitet.toDouble(),
                  onChanged: (val) => setState(() => mobilitet = val.toInt()),
                  min: 1,
                  max: 4,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Ernæring', style: textTheme.titleLarge),
                Text('$ernaering', style: textTheme.headlineSmall),
                Slider(
                  value: ernaering.toDouble(),
                  onChanged: (val) => setState(() => ernaering = val.toInt()),
                  min: 1,
                  max: 4,
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Text('Gnidning og forskydning', style: textTheme.titleLarge),
                Text('$gnidning', style: textTheme.headlineSmall),
                Slider(
                  value: gnidning.toDouble(),
                  onChanged: (val) => setState(() => gnidning = val.toInt()),
                  min: 1,
                  max: 3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
