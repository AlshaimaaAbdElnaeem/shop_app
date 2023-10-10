import 'package:flutter/material.dart';
import 'package:shop_app/views/cart_view.dart';
import 'package:shop_app/views/constans.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: const Text(
        'Home',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, CartView.id);
          },
          icon: const Icon(Icons.shopping_cart),
          color: Colors.black,
        )
      ],
    );
  }}