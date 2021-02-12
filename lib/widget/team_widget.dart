import 'package:flutter/material.dart';

class TeamCarousel extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  TeamCarousel({this.title, this.description, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue[50], Colors.grey],
        ),
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   width: 2,
        //   color: Colors.black,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Image.asset(
            image,
            height: 150,
            width: 150,
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Divider(
            height: 20.0,
            color: Colors.black,
            indent: 50.0,
            endIndent: 50.0,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
