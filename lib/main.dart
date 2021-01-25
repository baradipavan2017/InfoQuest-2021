import 'package:flutter/material.dart';
import './screens/bramch_events_screen.dart';
import './screens/home_page.dart';

void main() => runApp(InfoQuest());

class InfoQuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InfoQuest',
      home: HomePage(),
      // initialRoute: '/',
      routes: {
        // '/': (ctx) => HomePage(),
        BranchEventsScreen.routeName: (ctx) => BranchEventsScreen(),
      },
    );
  }
}
