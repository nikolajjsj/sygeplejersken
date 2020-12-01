import 'package:flutter/material.dart';

class ToolCard extends StatelessWidget {
  final String title;
  final String imageAsset;

  const ToolCard({
    Key key,
    @required this.title,
    @required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imageHeight = 75.0;
    final _imageWidth = MediaQuery.of(context).size.width * .5;
    final _textStyle = Theme.of(context).textTheme.headline6;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Row(
          children: [
            const SizedBox(width: 12.0),
            Text(
              title,
              style: _textStyle,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),
            Image.asset(
              imageAsset,
              height: _imageHeight,
              fit: BoxFit.cover,
              width: _imageWidth,
            ),
          ],
        ),
      ),
    );
  }
}