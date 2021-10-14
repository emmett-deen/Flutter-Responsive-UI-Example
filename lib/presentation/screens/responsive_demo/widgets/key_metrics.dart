import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/key_metric_card/key_metric_card.dart';

class KeyMetrics extends StatelessWidget {
  const KeyMetrics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 300.0 / 100.0,
        crossAxisCount: 3,
        children: [
          KeyMetricCard(
              backgroundColor: Colors.green.shade200,
              chartColor: Colors.green,
              title: 'Ethereum',
              subtitle: 'ETH/USD',
              value: '\$3,794.74'),
          KeyMetricCard(
              backgroundColor: Colors.blue.shade200,
              chartColor: Colors.blue,
              title: 'Bitcoin',
              subtitle: 'BTC/USD',
              value: '\$57,476.30'),
          KeyMetricCard(
              backgroundColor: Colors.red.shade200,
              chartColor: Colors.red,
              title: 'Dogecoin',
              subtitle: 'DOGE/USD',
              value: '\$0.236560'),
        ]);
  }
}
