import 'package:flutter/material.dart';
import 'package:shop_app/providers/products_provider.dart';
import 'package:provider/provider.dart';
class ProductDetailScreen extends StatelessWidget {

  // String title;
  // ProductDetailScreen(this.title);

  static const RouteName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context,listen: false).findByID(productID); //false because u need that data just 1 time
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
