import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model_provider.dart';
import 'package:shop_app/views/constans.dart';
import 'package:shop_app/widgets/custom_button.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModelProvider>(
      builder: (context, cart, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom:24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "\$${cart.totalPrice}",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              CustomButton(
                backColor: kPrimaryColor,
                  buttonText: 'Buy',
                  textSize: 20,
                  textColor: Colors.white,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Not Supported yet.')));
                  })
            ],
          ),
        );
      },
    );
  }
}
