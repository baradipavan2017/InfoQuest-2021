import 'package:flutter/material.dart';
import 'package:infoquest_2021_final/widget/app_drawer.dart';
import '../models/branch_data.dart';

import '../widget/branch_tiles.dart';

class EventsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guests',
          style: Theme.of(context).textTheme.headline6,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: AppDrawer(),
          body: GridView(
        padding: const EdgeInsets.all(20),
        children: Branch.map((branData) => BranchTiles(
                branData.id, branData.title, branData.image, branData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 8 / 7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
