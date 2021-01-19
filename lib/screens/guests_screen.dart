import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GuestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Colors.yellow[50]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/CG3.jpg',
                      height: 300,
                      width: 300,
                    ),
                    const Text(
                      'Sai Kiran',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 29,
                      ),
                    ),
                   const Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        '"Hopp is a Hyderabad based startup that provides On demand driver services round the clock. Launched in 2017, Hopp achieved 900 registered drivers and more than 10,000 registered users in just a year !"',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              )
            ],
            options: CarouselOptions(
              autoPlay: true,
              height: height,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
            ),
          ),
        ),
      ],
    );
  }
}
