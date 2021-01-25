import 'package:flutter/material.dart';

class Planet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSE'),
      ),
      body: Container(
        height: 180.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            // Text
            Container(
              height: 124.0,
              margin: new EdgeInsets.only(left: 46.0),
              decoration: new BoxDecoration(
                color: new Color(0xFF333366),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  )
                ],
              ),
            ),
            //Image
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              alignment: FractionalOffset.centerLeft,
              child: new Image.asset('assets/icons/hacker.png'),
              height: 100.0,
              width: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
