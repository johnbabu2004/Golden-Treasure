import 'package:flutter/material.dart';
import 'package:myapp/screens/productdetails.dart';
import 'package:myapp/widgets/products.dart';
//mport 'package:myapp/screens/bottomNavBar/my_cart.dart';
class ProductCard extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:520561761.
final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) {
        return ProductPage(product: product,);
      },)),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                product.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Text(
                    'Rs. ${product.originalPrice}',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'Rs. ${product.discountedPrice}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_outline_rounded),
                        onPressed: () {
                       
                        },
                      ),
                      IconButton(
      // Suggested code may be subject to a license. Learn more: ~LicenseLog:3102277851.
                        icon: Icon(Icons.shopping_cart_outlined),
                        onPressed: () {
                           
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

