import 'package:flutter/material.dart';
import '../models/branch_data.dart';

import '../widget/branch_tiles.dart';

class EventsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView(
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
    );
  }
}
