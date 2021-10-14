import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/activity_tile/activity_tile.dart';
import 'package:flutter_responsive_ui_example/presentation/widgets/section_title/section_title.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
            text: 'Recent Activity',
            style: Theme.of(context).textTheme.headline6),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const ActivityTile();
              },
              itemCount: 10,
            ),
          ),
        )
      ],
    );
  }
}
