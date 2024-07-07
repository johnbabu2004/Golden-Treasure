

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/catalog/catagories/best_selled_list.dart';
import 'package:myapp/screens/mysearch.dart';
import 'package:myapp/widgets/product_grid.dart';
import 'package:myapp/widgets/carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
                child: TextField(
                  
                    decoration:InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: const Color.fromARGB(255, 63, 27, 14),
                          
                        ),
                      
                      ),
                      prefixIcon: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>MySearch()));
                        },
                        child: Icon(Icons.search,color: Colors.brown),
                      ),
                      
                      suffixIcon: Icon(Icons.mic,color: Colors.brown),
                      
                      
                    )
                ),
              ),
            ),
            SizedBox(
              height: 100,
              
              child:Padding(
                padding: EdgeInsets.all(20),
               child: Text("\"UNLOCK THE TREASURE WITH IN WEAR OUR JEWELs LET THE MAGIC BEGIN!\"",
              textAlign: TextAlign.center,
              style:GoogleFonts.lobster(
            
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.brown[500]
                
              ),
                )

              ),
            ),
              
            
            SizedBox(
              height: 250,
              child: MyCorousel(),
            ),
            Divider(
              height: 20,
            ),
            Text(
              "Most Selled Products",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductGrid(products: BestSelledList.products),
            ),
          ],
        ),
      ),
    );
  }
}
