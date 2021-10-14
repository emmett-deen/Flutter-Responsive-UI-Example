import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/chart_detail/chart_detail_card.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/section_title/section_title.dart';

class MarketOverview extends StatelessWidget {
  const MarketOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Market Overview',
          style: Theme.of(context).textTheme.headline6,
        ),
        const ChartDetailCard()
      ],
    );
  }
}
