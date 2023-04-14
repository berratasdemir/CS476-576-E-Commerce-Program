import 'package:flutter/material.dart';
import 'home_page.dart';
import 'shopping_cart_page.dart';

class FavoritesPage extends StatefulWidget {

  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text('Favorites'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('lib/icons/search.png'),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset('lib/icons/pen.png'),
        ),
      ],
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  child: Text(
                    'My Favorites',
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Favorite ${index + 1}'),
                  subtitle: Text('This is my favorite item number ${index + 1}'),
                );
              },
            ),
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
                onPressed: () {},
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
