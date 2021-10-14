import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/layouts/dashboard_layout/dashboard_layout.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/key_metrics.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/market_overview.dart';
import 'package:flutter_responsive_ui_example/presentation/screens/responsive_demo/widgets/recent_activity.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveDemoScreen extends StatelessWidget {
  const ResponsiveDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DashboardLayout(
        child: ListView(children: [
          ScreenTypeLayout(
            mobile: _buildVertical(),
            tablet: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Flexible(flex: 1, child: KeyMetrics()),
                Flexible(flex: 1, child: MarketOverview()),
              ],
            ),
            desktop: _buildVertical(),
          ),
          const RecentActivity(),
        ]),
        title: 'Dashboard');
  }

  Column _buildVertical() {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: const [KeyMetrics(), MarketOverview()]);
  }
}
