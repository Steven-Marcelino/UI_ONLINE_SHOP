import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_online/constants.dart';
import 'package:shop_online/models/Product.dart';
import 'package:shop_online/screens/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';

// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  right: kDefaultPaddin, left: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.55,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
