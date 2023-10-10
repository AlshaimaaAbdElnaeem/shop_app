import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/cart_model_provider.dart';
import 'package:shop_app/models/catalog-model.dart';
import 'package:shop_app/views/cart_view.dart';
import 'package:shop_app/views/hom_view.dart';
import 'package:shop_app/views/login_view.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
    Provider(create: (context)=>CatalogModel()),
    ChangeNotifierProxyProvider<CatalogModel , CartModelProvider>(create: (context)=> CartModelProvider(), update:(context,catalog , cart){
     if (cart == null){
      throw ArgumentError.notNull("cart");
     }else {
     cart.catalog = catalog ;
     return cart ;
     }
    } )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginView.id,
    routes:{
      LoginView.id :(context) =>const LoginView(),
      HomeView.id :(context) => const HomeView(),
      CartView.id :(context) => const CartView(),
    
    },
      ),
    );
     
}
}