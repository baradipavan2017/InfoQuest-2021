import 'package:flutter/material.dart';
import './screens/home_page.dart';

void main() => runApp(InfoQuest());

class InfoQuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InfoQuest',
      home: HomePage(),
    );
  }
}
