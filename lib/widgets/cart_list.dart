import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model_provider.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartModelProvider>();
    return ListView.builder(
      itemCount: cart.item.length,
      itemBuilder: (context , index)=> ListTile(
      leading: const Icon(Icons.check),
      trailing: IconButton( onPressed : (){
cart.remove(cart.item[index]);
      },icon:const Icon(Icons.remove_circle_outline)),
      title: Text(cart.item[index].name , style:const TextStyle(fontSize: 20,),) ,
    ),
   
    );
  }
}