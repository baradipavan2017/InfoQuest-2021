import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/IQ2.jpg',
  'assets/images/IQ1.jpg',
  'assets/images/CG3.jpg',
  'assets/images/c5.jpg',
  'assets/images/c4.jpg',
];

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new CarouselSlider(
        items: imgList
            .map((items) => Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      items,
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
            .toList(),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true
        ),
      ),
    );
  }
}
