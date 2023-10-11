import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model_provider.dart';
import 'package:shop_app/models/item_model.dart';

class AddBottom extends StatefulWidget {
  const AddBottom({super.key, required this.item});
  final ItemModel item;

  @override
  State<AddBottom> createState() => _AddBottomState();
}

class _AddBottomState extends State<AddBottom> {
  @override
  Widget build(BuildContext context) {
    var isInCart = context
        .select<CartModelProvider, bool>((cart) => cart.item.contains(widget.item));
    return TextButton(
        onPressed: isInCart
            ? null
            : () {
                Provider.of<CartModelProvider>(context , listen: false).add(widget.item);
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
 