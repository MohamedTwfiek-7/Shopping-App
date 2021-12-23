import 'package:flutter/material.dart';

class ProdectItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProdectItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        trailing: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        leading: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}