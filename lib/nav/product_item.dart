import 'package:flutter/material.dart';

class ProductItem {
  final String name;
  final String price;
  final String image;

  ProductItem(
      {required this.name,
      required this.price,
      required this.image,
      required void Function(ProductItem product) addToFavorites});
}

class ProductBox extends StatefulWidget {
  final ProductItem product;

  ProductBox({required this.product});

  @override
  _ProductBoxState createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(8.0)),
                  child: Image.asset(
                    widget.product.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.product.name,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              if (widget.product.price.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.product.price,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          // Handle add to cart
                        },
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                if (isFavorite) {
                  Navigator.pushNamed(context, '/favorite');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
