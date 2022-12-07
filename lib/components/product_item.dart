import 'package:flutter/material.dart';
import 'package:shop_curso_flutter/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
