import 'package:flutter/material.dart';
import 'package:list_view_activity/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onTap; // Adicione essa linha

  const ProductItem({
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      onTap: onTap, // Adicione essa linha
    );
  }
}
