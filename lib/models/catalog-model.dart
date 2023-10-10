import 'package:shop_app/models/item_model.dart';

class CatalogModel {
   String ?itemName;
   double ?itemPrice;
  List<CatalogModel> itemsNames = [
    CatalogModel(itemName: 'Hand cream', itemPrice: 20),
    CatalogModel(itemName: 'Lisa Pallock', itemPrice: 30),
    CatalogModel(itemName: 'Hand cream', itemPrice: 40),
    CatalogModel(itemName: 'Babyators', itemPrice: 50),
    CatalogModel(itemName: 'Black Milk', itemPrice: 60),
    CatalogModel(itemName: 'Artico', itemPrice: 70),
    CatalogModel(itemName: 'Bonds', itemPrice: 80),
    CatalogModel(itemName: 'Hand cream', itemPrice: 90),
    CatalogModel(itemName: 'Lisa Pallock', itemPrice: 100),
    CatalogModel(itemName: 'Babyators', itemPrice: 10),
    CatalogModel(itemName: 'Hand cream', itemPrice: 85),
    CatalogModel(itemName: 'Hand cream', itemPrice: 26),
    CatalogModel(itemName: 'Hand cream', itemPrice: 58),
    CatalogModel(itemName: 'Hand cream', itemPrice: 45),
    CatalogModel(itemName: 'Hand cream', itemPrice: 75),
  ];

  CatalogModel({this.itemName,this.itemPrice});

  ItemModel getById(int id) {
    return ItemModel(
        name: itemsNames[id % itemsNames.length].itemName!,
        id: id,
        price: itemsNames[id % itemsNames.length].itemPrice!);
  }
}
