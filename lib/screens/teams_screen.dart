import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:infoquest_2021_final/widget/app_drawer.dart';
import 'package:infoquest_2021_final/widget/team_widget.dart';
import '../models/team_data.dart';

class TeamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.78;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Teams',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: AppDrawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CarouselSlider(
                items: team
                    .map((teData) => TeamCarousel(
                          title: teData.title,
                          description: teData.description,
                          image: teData.image,
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: height,
                  aspectRatio: 2 / 5,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                )),
          ),
        ],
      ),
    );
  }
}
