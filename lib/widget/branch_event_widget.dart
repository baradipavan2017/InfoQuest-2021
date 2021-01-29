import 'package:flutter/material.dart';

class BranchEventWidget extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  // final String description;
  final String coordinator;
  // final String prize;
  BranchEventWidget({
    @required this.id,
    @required this.title,
    @required this.image,
    // @required this.description,
    @required this.coordinator,
    // @required this.prize,
  });

  void selectEvent() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(children: <Widget>[
        Container(
          height: 124.0,
          margin: const EdgeInsets.only(left: 46.0),
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
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          alignment: FractionalOffset.centerLeft,
          child: Image.network(image),
          height: 92.0,
          width: 92.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(100.0, 16.0, 16.0, 16.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Text(
                  title,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  coordinator,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
