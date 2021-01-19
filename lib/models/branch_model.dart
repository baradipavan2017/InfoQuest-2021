import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BranchModel {
  final String id;
  final String title;
  final String image;
  final Color color;

  const BranchModel({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.color,
  });
}

class GuestModel {
  final String id;
  final String title;
  final String image;
  final String description;

  const GuestModel({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.description,
  });
}
