import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Sweater',
      description: 'A nice cool Sweater.',
      price: 59.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/03/27/19/31/fashion-1283863_960_720.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Trousers',
      description: 'A nice skin Trousers.',
      price: 39.99,
      imageUrl:
          'https://media.istockphoto.com/photos/black-mens-classic-trousers-picture-id1301138253',
    ),
    Product(
      id: 'p4',
      title: 'Hoodie',
      description: 'A nice cool Hoodie.',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/11/03/17/50/man-515518_960_720.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, inx) => ProdectItem(
          products[inx].id,
          products[inx].title,
          products[inx].imageUrl,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
      ),
    );
  }
}
