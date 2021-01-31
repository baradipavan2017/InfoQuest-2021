import 'package:flutter/material.dart';
import './Provider/provider_events.dart';
import 'package:provider/provider.dart';
import './screens/bramch_events_screen.dart';
import './screens/home_page.dart';

void main() => runApp(InfoQuest());

class InfoQuest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Events(),
          child: MaterialApp(
        title: 'InfoQuest',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.black,
          fontFamily: 'Montserrat-Bold',
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 22,
              fontFamily: 'Roboto',
              color: Colors.black,
            ),
          ),
        ),
        home: HomePage(),
        // initialRoute: '/',
        routes: {
          // '/': (ctx) => HomePage(),
          BranchEventsScreen.routeName: (ctx) => BranchEventsScreen(),
        },
      ),
    );
  }
}
