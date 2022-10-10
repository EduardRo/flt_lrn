import 'package:flt_lrn/coffeeApp/util/cofee_tile.dart';
import 'package:flt_lrn/coffeeApp/util/cofee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          ),
        ],
        title: Text(
          widget.title,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
      body: Column(
        // Find the best coffe for you

        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          // Search Bar
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Find your fucking coffee Biatch!',
              focusedBorder: OutlineInputBorder(),
            )),
          ),

          const SizedBox(
            height: 5,
          ),

          // horizontal listview of coffee
          Container(
            height: 50,
            color: const Color.fromARGB(255, 35, 33, 33),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [CoffeeType(), CoffeeType()]),
          ),
          // Horizontal listview of coffeTiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
