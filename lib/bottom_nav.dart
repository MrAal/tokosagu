import 'package:flutter/material.dart';
import 'nav/favorite_screen.dart';
import 'nav/call_screen.dart';
import 'package:tokosagu/nav/profile_screen.dart';
import 'package:tokosagu/nav/home_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    // FavoriteScreen(),
    CallScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart button press
            },
          ),
        ],
      ),
     backgroundColor: Colors.grey[100],
 // Ubah warna latar belakang di sini
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.favorite), // Ikon Favorite
                Positioned(
                  right: 0,
                  child: Icon(Icons.favorite_border), // Ikon love
                ),
              ],
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        elevation: 8, // Tambahkan elevation di sini untuk menambah shadow
        backgroundColor: Theme.of(context)
            .appBarTheme
            .backgroundColor, // Gunakan backgroundColor dari tema app bar
      ),
    );
  }
}
