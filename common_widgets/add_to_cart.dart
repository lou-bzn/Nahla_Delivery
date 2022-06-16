import 'package:flutter/material.dart';
import 'package:nahla/product/product_in_cart.dart';
import 'package:nahla/product/product_item.dart';

class ProductsVM with ChangeNotifier {
  List<ProdcutInCart> lst = <ProdcutInCart>[];
  add(GroceryItem product) {
    lst.add(ProdcutInCart(product: product));
    notifyListeners();
  }

  del(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
}
