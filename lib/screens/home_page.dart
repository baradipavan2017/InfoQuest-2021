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
  final _pages = [
    HomeScreen(),
    EventsScreen(),
    GuestsScreen(),
    TeamsScreen(),
  ];
  // final List<Map<String, Object>> _pages = [
  //   {'page:':, 'title': 'InfoQuest'},
  //   {'page': , 'title': 'Events'},
  //   {'page':, 'title': 'Guests'},
  //   {'page': , 'title': 'OurTeams'}
  // ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     // _pages[_selectedPageIndex],
      //     style: Theme.of(context).textTheme.headline6,
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      body: _pages[_selectedPageIndex],
      drawer: AppDrawer(),
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0,
        currentIndex: _selectedPageIndex,
        onTap: (index) {
          _selectPage(index);
        },
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
    );
  }
}
