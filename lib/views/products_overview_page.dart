import 'package:flutter/material.dart';
import 'package:shop_curso_flutter/components/product_item.dart';
import 'package:shop_curso_flutter/data/dummy_data.dart';
import 'package:shop_curso_flutter/models/product_model.dart';

class ProductsOverviewPage extends StatefulWidget {
  final List<ProductModel> loadedProducts = dummyProductModels;
  ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Minha Loja')),
      ),
      body: GridView.builder(
      padding: const EdgeInsets.all(10),
        itemCount: widget.loadedProducts.length,
        itemBuilder: (context, index) => ProductItem(product: widget.loadedProducts[index]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
