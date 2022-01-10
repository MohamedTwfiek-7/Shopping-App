import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'models/cart.dart';
import 'screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (cxt) => Products(),
        ),
        ChangeNotifierProvider(
          create: (cxt) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.yellow,primary: Colors.purple),
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {ProductDetailScreen.RouteName: (ctx) => ProductDetailScreen()},
      ),
    );
  }
}