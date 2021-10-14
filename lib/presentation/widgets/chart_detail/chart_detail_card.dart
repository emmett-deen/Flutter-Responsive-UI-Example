import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sparkline/sparkline.dart';

class ChartDetailCard extends StatelessWidget {
  const ChartDetailCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Sparkline(
            data: List.generate(30, (index) => Random().nextDouble()),
            lineColor: Colors.black,
            // labelPrefix: '\$',
          ),
        ),
      ),
    );
  }
}
