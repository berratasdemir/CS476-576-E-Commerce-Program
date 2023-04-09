import 'package:flutter/material.dart';

import 'favorites_page.dart';
import 'home_page.dart';
import 'shopping_cart_page.dart';

class AccountPage extends StatefulWidget {

  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.account_circle),
            SizedBox(width: 8.0),
            Text('Account'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('lib/icons/bell.png'),
          ),
        ],
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
                    'Personal Information',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  SizedBox(height: 16.0),
                  Text('Name: Berra'),
                  Text('Gender: Woman'),
                  Text('Email: berra@example.com'),
                ],
              ),
            ),
            // Add other widgets here
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
          ),
        ),
      ),
    );
  }
}