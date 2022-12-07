import 'package:flutter/material.dart';
import 'package:shop_curso_flutter/views/products_overview_page.dart';

void main() {
  runApp(const Shop());
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.deepOrange),
        fontFamily: 'Lato',
      ),
      home: ProductsOverviewPage(),
    );
  }
}
