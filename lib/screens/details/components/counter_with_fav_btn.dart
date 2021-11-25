import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(8),
          height: 40,
          width: 40,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: const Center(
            // ignore: unnecessary_const
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
