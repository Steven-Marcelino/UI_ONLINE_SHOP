import 'package:flutter/material.dart';
import 'package:shop_online/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description,
        // ignore: prefer_const_constructors
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
