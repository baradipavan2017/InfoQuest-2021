import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:infoquest_2021_final/models/guest_data.dart';
import 'package:infoquest_2021_final/widget/guest_widget.dart';

class GuestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // for letv
    // final double height = MediaQuery.of(context).size.height * 0.73;
    // for oneplus
    final double height = MediaQuery.of(context).size.height * 0.8;
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CarouselSlider(
            items: Guest.map((gueData) => GuestWidget(
                  gueData.id,
                  gueData.title,
                  gueData.image,
                  gueData.description,
                )).toList(),
            options: CarouselOptions(
              autoPlay: false,
              height: height,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 2 / 5,
            ),
          ),
        ),
      ],
    );
  }
}
