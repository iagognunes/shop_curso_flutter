import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: widget.loadedProducts.length,
          itemBuilder: (context, index) => Text(widget.loadedProducts[index].title),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
    );
  }
}
