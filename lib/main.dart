import 'package:flutter/material.dart';
import 'package:sygeplejersken/misc/tool_list.dart';
import 'package:sygeplejersken/widgets/tool_card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sygeplejersken',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sygeplejersken'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tools.length,
        itemBuilder: (context, index) {
          final _tool = tools[index];

          return ToolCard(
            title: _tool.title,
            imageAsset: _tool.imageAsset,
            tool: _tool.tool,
          );
        },
      ),
    );
  }
}
