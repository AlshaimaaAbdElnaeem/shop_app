import 'package:flutter/material.dart';

class ItemModel {
  final String name;
  final Color color;
  final int id;
  final double price;

  ItemModel({required this.name, required this.id, required this.price})
      : color = Colors.primaries[id % Colors.primaries.length];
      @override
      int get hashcode => id;
      @override
      bool operator == (Object object)=> object is ItemModel && object.id ==id ;

}
