import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class Footer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white54,
        padding: EdgeInsets.all(16.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon : Image.asset('lib/icons/home.png', fit: BoxFit.scaleDown,),

              // Set the button's minimum size to 200x50 pixels
            ),

            IconButton(
              onPressed: () {},
              icon : Image.asset('lib/icons/heart.png', fit: BoxFit.scaleDown,),

              // Set the button's minimum size to 200x50 pixels
            ),
            IconButton(
              onPressed: () {},
              icon : Image.asset('lib/icons/shopping-cart.png', fit: BoxFit.scaleDown,),

              // Set the button's minimum size to 200x50 pixels
            ),

          ],
        )
    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  MyAppBar({required this.title, this.actions});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton(
            icon: Image.asset('lib/icons/person.png'),
            onPressed: () {
              // handle menu button press
            },
          ),

        ],
      ),
      actions: [
        SizedBox(width: 10), // Add a fixed width between the icons
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : MyAppBar(title: '',),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First container
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/pictures/home-ad1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Shop for Jeans',
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Second container
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/pictures/home-ad2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Shop for TShirts!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Third container
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/pictures/home-ad3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Shop for Socks!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Footer(),


    );


  }

}
