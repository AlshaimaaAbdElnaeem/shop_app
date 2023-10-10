import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/catalog-model.dart';

import 'package:shop_app/widgets/custom_app_bar.dart';
import 'package:shop_app/widgets/list_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    var number = Provider.of<CatalogModel>(context).itemsNames.length;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => ListItems(index),
            childCount: 10,
          ))
        ],
      ),
    );
  }
}
