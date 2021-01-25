import 'package:flutter/material.dart';
import '../screens/bramch_events_screen.dart';

class BranchTiles extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final Color color;
  BranchTiles(this.id, this.title, this.image, this.color);
  
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(BranchEventsScreen.routeName,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withOpacity(1.0), color]),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
