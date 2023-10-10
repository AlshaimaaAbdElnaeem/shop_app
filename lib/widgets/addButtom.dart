import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model_provider.dart';
import 'package:shop_app/models/item_model.dart';

class AddBottom extends StatelessWidget {
  const AddBottom({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    var isInCart = context
        .select<CartModelProvider, bool>((cart) => cart.item.contains(item));
    return TextButton(
        onPressed: isInCart
            ? null
            : () {
                Provider.of<CartModelProvider>(context).add(item);
              },
        child: isInCart
            ? const Icon(Icons.check)
            : const Text(
                'Add',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ));
  }
}
