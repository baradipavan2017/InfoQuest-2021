import 'package:flutter/material.dart';

class BranchEventWidget extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String description;
  final String coordinator;
  final String prize;
  BranchEventWidget({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.coordinator,
    @required this.prize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      child: Stack(children: <Widget>[
        Container(
          height: 250.0,
          // margin: const EdgeInsets.only(left: 46.0),
          decoration: BoxDecoration(
            color: Colors.amber[200],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: <BoxShadow>[
              const BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(16.0, 75.0, 0.0, 0.0),
          alignment: FractionalOffset.centerLeft,
          child: Image.network(image),
          height: 92.0,
          width: 92.0,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(120.0, 16.0, 10.0, 16.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  coordinator,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // SizedBox(
                //   height: 5.0,
                // ),
                Text(
                  description,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.monetization_on_outlined),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      prize,
                      style: TextStyle(fontSize: 15.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(Icons.emoji_events_outlined),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      prize,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
