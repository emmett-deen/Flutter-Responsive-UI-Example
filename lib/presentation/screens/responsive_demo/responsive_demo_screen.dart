import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/key_metrics.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/market_overview.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/recent_activity.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/navigation_drawer/navigation_drawer.dart';

class ResponsiveDemoScreen extends StatelessWidget {
  const ResponsiveDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          centerTitle: false,
        ),
        body: Row(
          children: [
            const NavigationDrawer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: ListView(children: const [
                  KeyMetrics(),
                  MarketOverview(),
                  RecentActivity(),
                ]),
              ),
            ),
          ],
        ));
  }
}


