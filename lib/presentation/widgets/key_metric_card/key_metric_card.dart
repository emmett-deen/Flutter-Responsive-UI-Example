import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sparkline/sparkline.dart';

class KeyMetricCard extends StatelessWidget {
  final Color backgroundColor;
  final Color chartColor;
  final String title;
  final String value;
  final String subtitle;
  const KeyMetricCard(
      {Key? key,
      required this.backgroundColor,
      required this.chartColor,
      required this.title,
      required this.value,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(title),
                  subtitle: Text(subtitle),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                  child:
                      Text(value, style: Theme.of(context).textTheme.headline5),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: SizedBox(
                height: 32,
                child: Sparkline(
                  data: List.generate(30, (index) => Random().nextDouble()),
                  lineColor: chartColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
