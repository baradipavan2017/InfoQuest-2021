import 'package:flutter/material.dart';

class BranchTiles extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final Color color;
  BranchTiles(this.id, this.title, this.image, this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                colors: [color.withOpacity(.7), color]),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
