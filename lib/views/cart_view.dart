import 'package:flutter/material.dart';
import 'package:shop_app/widgets/app_bar_cart.dart';
import 'package:shop_app/widgets/cart_list.dart';
import 'package:shop_app/widgets/cart_total.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static String id = 'cartView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCart(context),
      body:  Column(
        children: [
          const Expanded(child: CartList()),
          Divider(thickness: 3, color: Colors.black.withOpacity(0.3),),
          const CartTotal(),
        ],
      ),
    );
  }

  
  }

