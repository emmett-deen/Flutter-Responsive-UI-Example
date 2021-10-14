import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('First Last'),
          Text('first.last@example.com'),
          Text('777-777-7777'),
          Text('Woodstock, GA')
        ],
      ),
    );
  }
}