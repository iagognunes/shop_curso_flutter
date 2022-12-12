import 'package:flutter/material.dart';
import 'package:shop_curso_flutter/data/dummy_data.dart';
import 'package:shop_curso_flutter/models/product_model.dart';

class ProductList with ChangeNotifier {
  List<ProductModel> itens = dummyProductModels;

  List<ProductModel> get items => [...itens];

  void addProduct(ProductModel product) {
    itens.add(product);
    notifyListeners();
  }
}
