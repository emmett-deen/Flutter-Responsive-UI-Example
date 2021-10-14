import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/key_metric_card/key_metric_card.dart';

class ResponsiveDemoScreen extends StatelessWidget {
  const ResponsiveDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SizedBox(
        width: 300,
        child: KeyMetricCard(
          backgroundColor: Colors.blue.shade200,
          chartColor: Colors.blue.shade500,
          title: 'Ethereum',
          subtitle: 'ETH/USD',
          value: '\$1,000.00'
        ),
      ),),
    );
  }
}
