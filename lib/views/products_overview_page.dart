import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_curso_flutter/components/product_item.dart';
import 'package:shop_curso_flutter/models/product_model.dart';
import 'package:shop_curso_flutter/providers/product_list.dart';

class ProductsOverviewPage extends StatefulWidget {
  const ProductsOverviewPage({super.key});

  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<ProductModel> loadedProducts = provider.items;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Minha Loja')),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (context, index) =>
            ProductItem(product: loadedProducts[index]),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
