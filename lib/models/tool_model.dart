import 'package:flutter/material.dart';

class HealthTool {
  final String title;
  final String description;
  final String imageAsset;
  final Widget tool;

  const HealthTool({
    @required this.title,
    @required this.description,
    @required this.imageAsset,
    @required this.tool,
  });
}
