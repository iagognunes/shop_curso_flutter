import 'package:flutter/material.dart';
import 'package:shop_curso_flutter/models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(product.title)), 
      ),
    );
  }
}
