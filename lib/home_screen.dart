import 'package:flutter/material.dart';
import 'package:tokosagu/nav/section_widget.dart';
import 'nav/favorite_screen.dart';
import 'nav/product_item.dart'; // Sesuaikan dengan lokasi dan nama file product_item.dart

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductItem> _favoriteProducts = []; // Simpan daftar produk favorit

  @override
  Widget build(BuildContext context) {
    // Fungsi untuk menambahkan produk ke daftar favorit
    void addToFavorites(ProductItem product) {
      setState(() {
        _favoriteProducts.add(product); // Tambahkan produk ke daftar favorit
      });
      // Navigasi ke FavoriteScreen dan meneruskan daftar produk favorit
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              FavoriteScreen(favoriteProducts: _favoriteProducts),
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  Text(
                    'Sagu Bengkalis',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SectionWidget(
                    title: 'Produk',
                    items: [
                      // Tambahkan widget ProductItem dengan addToFavorites
                      ProductItem(
                        name: 'Mie Sagu',
                        price: 'Rp25.000',
                        image: 'assets/images/logosagu.jpg',
                        addToFavorites: addToFavorites,
                      ),
                      ProductItem(
                        name: 'Kerupuk Sagu',
                        price: 'Rp25.000',
                        image: 'assets/images/logosagu.jpg',
                        addToFavorites: addToFavorites,
                      ),
                    ],
                  ),
                  SectionWidget(
                    title: 'Resep',
                    items: [
                      ProductItem(
                        name: 'Mie Sagu Goreng',
                        price: '',
                        image: 'assets/images/logosagu.jpg',
                        addToFavorites: addToFavorites,
                      ),
                      ProductItem(
                        name: 'Mie Sagu Kuah',
                        price: '',
                        image: 'assets/images/logosagu.jpg',
                        addToFavorites: addToFavorites,
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

