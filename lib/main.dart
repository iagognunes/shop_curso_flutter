import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_curso_flutter/providers/product_list.dart';
import 'package:shop_curso_flutter/utils/app_routes.dart';
import 'package:shop_curso_flutter/views/product_detal_page.dart';
import 'package:shop_curso_flutter/views/products_overview_page.dart';

void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.productDetail: (ctx) => const ProductDetailPage(),
      },
      ),
    );
  }
}
