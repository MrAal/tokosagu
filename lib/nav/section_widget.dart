import 'package:flutter/material.dart';
import 'product_item.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<ProductItem> items;

  SectionWidget({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemBuilder: (context, index) {
              return ProductBox(product: items[index]);
            },
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
