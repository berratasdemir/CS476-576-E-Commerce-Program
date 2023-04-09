import 'package:flutter/material.dart';

import 'favorites_page.dart';
import 'home_page.dart';

class ShoppingCartPage extends StatefulWidget {

  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 8.0),
            Text('Shopping Cart'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item 1',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 16.0),
                  Text('Price: \$10.00'),
                  Text('Quantity: 1'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Item 2',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 16.0),
                  Text('Price: \$15.00'),
                  Text('Quantity: 2'),
                ],
              ),
            ),
            // Add other items here
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            color: Colors.white54,
            padding: EdgeInsets.all(16.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  icon : Image.asset('lib/icons/home.png', fit: BoxFit.scaleDown,),

                  // Set the button's minimum size to 200x50 pixels
                ),

                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavoritesPage()),
                    );
                  },
                  icon : Image.asset('lib/icons/heart.png', fit: BoxFit.scaleDown,),

                  // Set the button's minimum size to 200x50 pixels
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                    );
                  },
                  icon : Image.asset('lib/icons/shopping-cart.png', fit: BoxFit.scaleDown,),

                  // Set the button's minimum size to 200x50 pixels
                ),

              ],
            )
        ),
      ),
    );
  }
}
