


import 'package:flutter/material.dart';
import 'package:myapp/widgets/products.dart';



class ProductPage extends StatelessWidget {
  final Product product;
  ProductPage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(product.imagePath                  , // Replace with the actual image URL
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star, color: Colors.orange),
                        Icon(Icons.star_half, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          '199 Reviews',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      '₹${product.discountedPrice.toString()}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '₹${product.originalPrice.toString()}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quantity:',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('1'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Description:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Jewellery is a universal form of adornment. Jewellery made from shells, stone and bones survives from prehistoric times. It is likely that from an early date it was worn as a protection from the dangers of life or as a mark of status or rank.In the ancient world the discovery of how to work metals was an important stage in the development of the art of jewellery. Over time, metalworking techniques became more sophisticated and decoration more intricate.',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Buy Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.red[200],
                              side: BorderSide(color: Colors.redAccent),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                           onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Item added to cart'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                            child: Text('Add to cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[200],
                              side: BorderSide(color: Colors.redAccent),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
