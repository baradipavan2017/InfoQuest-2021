import 'package:flutter/material.dart';

class GuestWidget extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String desc;
  GuestWidget(this.id, this.title, this.image, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [Colors.yellow[50], Colors.yellow[100]]),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: Colors.yellow[50],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Image.asset(
            image,
            height: 300,
            width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 29,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              desc,
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
    );
  }
}
