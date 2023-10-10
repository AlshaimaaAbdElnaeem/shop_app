import 'package:flutter/material.dart';
import 'package:shop_app/models/catalog-model.dart';
import 'package:shop_app/models/item_model.dart';

class CartModelProvider extends ChangeNotifier{
  late CatalogModel catalogModel ;
  final List <int> catalogId =[];
CatalogModel get catalog =>catalogModel ;
set catalog (CatalogModel catalog){
  catalogModel = catalog ;
notifyListeners();
}
List<ItemModel> get item => catalogId.map((id) => catalogModel.getById(id)).toList();
double get totalPrice => item.fold(0, (total, current) => total + current.price );
void add (ItemModel item){
  catalogId.add(item.id);
  notifyListeners();
}
void remove (ItemModel item){
catalogId.remove(item.id);
notifyListeners();
}

}