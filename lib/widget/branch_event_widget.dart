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
    final branchIcon = new Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: new Image.asset(image),
      height: 100.0,
      width: 100.0,
    );

    final branchContent = new Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            coordinator,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.attach_money_rounded),
              Text(
                prize,
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
              SizedBox(
                width: 50.0,
              ),
              Icon(
                Icons.emoji_events_outlined,
              ),
              Text(
                '200',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              )
            ],
          )
        ],
      ),
    );
    final branchCard = new Container(
      height: 124.0,
      margin: new EdgeInsets.only(left: 46.0),
      decoration: new BoxDecoration(
        color: Colors.amber[200],
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
      child: branchContent,
    );

    return Scaffold(
      body: InkWell(
        child: Container(
          height: double.infinity,
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 22.0,
          ),
          child: ListView(padding: EdgeInsets.all(8.0), children: <Widget>[
            Stack(
              children: <Widget>[
                // Text
                branchCard,
                //Icons
                branchIcon
              ],
            ),
            Stack(
              children: <Widget>[
                // Text
                branchCard,
                //Icons
                branchIcon
              ],
            ),
            Stack(
              children: <Widget>[
                // Text
                branchCard,
                //Icons
                branchIcon
              ],
            ),
            Stack(
              children: <Widget>[
                // Text
                branchCard,
                //Icons
                branchIcon
              ],
            ),
            Stack(
              children: <Widget>[
                // Text
                branchCard,
                //Icons
                branchIcon
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
