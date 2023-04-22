import 'package:sygeplejersken/models/tool_model.dart';
import 'package:sygeplejersken/screens/tools/bmi.dart';
import 'package:sygeplejersken/screens/tools/braden.dart';
import 'package:sygeplejersken/screens/tools/gcs.dart';
import 'package:sygeplejersken/screens/tools/medicin.dart';
import 'package:sygeplejersken/screens/tools/sonde.dart';
import 'package:sygeplejersken/screens/tools/time.dart';
import 'package:sygeplejersken/screens/tools/tobs.dart';

final List<HealthTool> tools = <HealthTool>[
  HealthTool(
    title: 'BMI',
    description: 'Body Mass Index',
    imageAsset: 'assets/images/bmi.jpg',
    tool: BmiTool(),
  ),
  HealthTool(
    title: 'Braden score',
    description: 'Vurdering af risiko for tryksår',
    imageAsset: 'assets/images/braden.jpg',
    tool: BradenTool(),
  ),
  HealthTool(
    title: 'GCS',
    description: 'Glasgow Coma Scale',
    imageAsset: 'assets/images/gcs.jpg',
    tool: GcsTool(),
  ),
  HealthTool(
    title: 'Medicinregning',
    description: 'Stofmængde, koncentrations, og volumenregning',
    imageAsset: 'assets/images/medicin.jpg',
    tool: MedicinTool(),
  ),
  HealthTool(
    title: 'Sondeernæring',
    description: 'Beregning af væske- og sondeernæringsbehov',
    imageAsset: 'assets/images/sonde.jpg',
    tool: SondeTool(),
  ),
  HealthTool(
    title: 'TIME - modellen',
    description: 'Vurdering af sår og sårbehandling',
    imageAsset: 'assets/images/time.jpg',
    tool: TimeTool(),
  ),
  HealthTool(
    title: 'TOBS',
    description: 'Tidlig opsporing af begyndende sygdom',
    imageAsset: 'assets/images/tobs.jpg',
    tool: TobsTool(),
  ),
];
