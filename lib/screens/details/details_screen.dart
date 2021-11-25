import 'package:flutter/material.dart';
import 'package:shop_online/constants.dart';
import 'package:shop_online/models/Product.dart';
import 'package:shop_online/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        // ignore: prefer_const_constructors
        icon: Icon(Icons.arrow_back),

        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          // ignore: prefer_const_constructors
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
        // ignore: prefer_const_constructors
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
