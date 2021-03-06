import 'package:flutter/material.dart';
import 'package:shop_app/models/cart.dart';
import 'package:shop_app/models/product.dart';
import '../screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProdectItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  //
  // ProdectItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context , listen: false);// in change of any cart don't rebuild the widget
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          trailing: IconButton(
            icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              product.toggleFavoriteStates();
            },
          ),
          leading: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {
              cart.addItem(product.id, product.title, product.price);
            },
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
