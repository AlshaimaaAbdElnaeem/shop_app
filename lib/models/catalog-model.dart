import 'package:shop_app/models/item_model.dart';
import 'package:shop_app/models/price_name_model.dart';

class CatalogModel {
  String? itemName;
  double? itemPrice;
  List<PriceAndNameModel> itemsNames = [
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Lisa Pallock', price: 20),
    PriceAndNameModel(name: 'Babyators', price: 20),
    PriceAndNameModel(name: 'Black Milk', price: 20),
    PriceAndNameModel(name: 'Artico', price: 20),
    PriceAndNameModel(name: 'Lisa Pallock', price: 20),
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Lisa Pallock', price: 20),
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Black Milk', price: 20),
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Artico', price: 20),
    PriceAndNameModel(name: 'Hand cream', price: 20),
    PriceAndNameModel(name: 'Babyators', price: 20),
  ];

  CatalogModel({this.itemName, this.itemPrice});

  ItemModel getById(int id) {
    return ItemModel(
        name: itemsNames[id % itemsNames.length].name,
        id: id,
        price: itemsNames[id % itemsNames.length].price);
  }
}
