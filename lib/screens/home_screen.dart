import 'package:flutter/material.dart';
import 'package:infoquest_2021_final/widget/app_drawer.dart';
import 'package:infoquest_2021_final/widget/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  static const String _descText =
      "InfoQuest is a National Level Technical Symposium conducted at JBIET. Having established itself in the itinerary of Technical Festivals,InfoQuest aims at bringing together and fostering a plethora of engineering talent and technical aspirants from across the country.⁠⁠⁠⁠";
  static const String _aboutUs =
      'As one of the top ten most preferred institutions in Telangana, JBIET continues to strive to impart technical (engineering) and professional education of very high standards. The aim of JBIET is to mould young learners into globally competitive professionals who are professionally deft, intellectually adept and socially responsible.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'InfoQuest-21',
          // _pages[_selectedPageIndex],
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageCarousel(),
            SizedBox(height: 15.0),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomRight,
                      colors: [Colors.yellow[300], Colors.white70]),
                ),
                child: Text(
                  'Welcome to InfoQuest-2021',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                _descText,
                style: TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomRight,
                      colors: [Colors.yellow[300], Colors.white70]),
                ),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                _aboutUs,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Center(
              child: Text(
                _aboutUs,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
