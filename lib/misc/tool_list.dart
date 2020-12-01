import 'package:flutter/material.dart';
import 'package:sygeplejersken/models/tool_model.dart';

final List<HealthTool> tools = <HealthTool>[
  HealthTool(
    title: 'BMI',
    description: 'Body Mass Index',
    imageAsset: 'assets/images/bmi.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'Braden score',
    description: 'Vurdering af risiko for tryksår',
    imageAsset: 'assets/images/braden.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'GCS',
    description: 'Glasgow Coma Scale',
    imageAsset: 'assets/images/gcs.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'Medicinregning',
    description: 'Stofmængde, koncentrations, og volumenregning',
    imageAsset: 'assets/images/medicin.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'Sondeernæring',
    description: 'Beregning af væske- og sondeernæringsbehov',
    imageAsset: 'assets/images/sonde.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'TIME - modellen',
    description: 'Vurdering af sår og sårbehandling',
    imageAsset: 'assets/images/time.jpg',
    tool: Material(),
  ),
  HealthTool(
    title: 'TOBS',
    description: 'Tidlig opsporing af begyndende sygdom',
    imageAsset: 'assets/images/tobs.jpg',
    tool: Material(),
  ),
];
