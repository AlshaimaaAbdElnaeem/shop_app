import 'package:flutter/material.dart';
import 'package:shop_app/views/constans.dart';

AppBar appBarCart(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )),
      backgroundColor: kPrimaryColor,
      title: const Text(
        'Cart',
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );}