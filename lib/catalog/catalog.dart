

import 'package:flutter/material.dart';
import 'package:myapp/catalog/catagories/belt_list.dart';
import 'package:myapp/catalog/catagories/combo_list.dart';
import 'package:myapp/catalog/catagories/ear_rings_list.dart';
import 'package:myapp/catalog/catagories/haram_list.dart';
import 'package:myapp/catalog/catagories/neckles_list.dart';
import 'package:myapp/widgets/product_grid.dart';


class MyCatalog extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
          bottom: TabBar(
            tabAlignment:TabAlignment.center,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            indicatorColor: Colors.brown,
            indicatorWeight: 5,
            splashBorderRadius: BorderRadius.circular(23),
            overlayColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.brown; // Slightly darker red on press
                }
                return null; // Use default overlay color otherwise
              },
            ),
            tabs: [
              Tab(text: 'Haram'),
              Tab(text: 'Necklace'),
              Tab(text: 'Ear Rings'),
              Tab(text: 'Belt'),
              Tab(text: 'Combos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProductGrid(products: HaramList.products),
            ProductGrid(products: NecklesList.products),
            ProductGrid(products: EarRingsList.products),
            ProductGrid(products: BeltList.products),
            ProductGrid(products: ComboList.products),
          ],
        ),
      ),
    );
  }
}

