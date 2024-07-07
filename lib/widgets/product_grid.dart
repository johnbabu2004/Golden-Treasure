
import 'package:flutter/material.dart';
import 'package:myapp/widgets/product_card.dart';
import 'package:myapp/widgets/products.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({
    super.key,
    required this.products,
  }) ;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Important to make GridView scrollable within SingleChildScrollView
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.75, // Adjust as needed
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return  ProductCard(product: product);     },
    );
  }
}
