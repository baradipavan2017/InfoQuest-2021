import 'package:flutter/material.dart';
import 'package:infoquest_2021_final/screens/bramch_events.dart';


void main() => runApp(InfoQuest());

class InfoQuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InfoQuest',
      home: BranchEvents(),
    );
  }
}
