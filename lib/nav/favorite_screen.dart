import 'package:flutter/material.dart';
import 'product_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<ProductItem> favoriteProducts;

  const FavoriteScreen({Key? key, required this.favoriteProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Products'),
      ),
      body: ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (context, index) {
          final product = favoriteProducts[index];
          return ListTile(
            leading: Image.asset(product.image),
            title: Text(product.name),
            subtitle: Text(product.price),
          );
        },
      ),
    );
  }
}
