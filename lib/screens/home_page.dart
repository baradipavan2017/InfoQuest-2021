import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import '../screens/guests_screen.dart';
import '../widget/app_drawer.dart';
import './events_screen.dart';
import './home_screen.dart';
import './teams_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, Object>> _pages = [
    {'page:': HomeScreen(), 'title': 'InfoQuest'},
    {'page': EventsScreen(), 'title': 'Events'},
    {'page': GuestsScreen(), 'title': 'Guests'},
    {'page': TeamsScreen(), 'title': 'OurTeams'}
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          _pages[_currentIndex]['title'],
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: _currentIndex,
        onTap: _changePage,
        backgroundColor: Color.fromRGBO(23, 23, 23, 7),
        elevation: 8,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.yellow[500],
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home_filled,
            ),
            title: Text('Home'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.yellow[500],
            icon: Icon(Icons.emoji_events_outlined),
            activeIcon: Icon(Icons.emoji_events),
            title: Text('Events'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.yellow[500],
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            title: Text('Guests'),
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.yellow[500],
            icon: Icon(Icons.people_alt_outlined),
            activeIcon: Icon(Icons.people),
            title: Text('Teams'),
          ),
        ],
      ),
      body: _pages[_currentIndex]['page'],
    );
  }
}
