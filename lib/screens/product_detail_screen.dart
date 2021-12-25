import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {

  // String title;
  // ProductDetailScreen(this.title);

  static const RouteName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
