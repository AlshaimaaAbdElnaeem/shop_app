import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/models/catalog-model.dart';
import 'package:shop_app/models/item_model.dart';

import 'package:shop_app/widgets/addButtom.dart';

class ListItems extends StatelessWidget {
  const ListItems(this.index, {super.key});
  final int index;
  
  @override
  Widget build(BuildContext context) {
 var item = context.read<CatalogModel>().getById(index);
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow:const [
          BoxShadow(color: Colors.grey, offset: Offset(-5, -5) , blurRadius: 5),
           BoxShadow(color: Colors.white,),

        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: item.color,
              ),
            ),
          ),
           Text(item.name, style: const TextStyle(fontSize: 20),),
           AddBottom(item: item,),
        ],
      ),
    );
  }
}
