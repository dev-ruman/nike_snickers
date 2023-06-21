import 'package:flutter/material.dart';
import 'package:nike_snickers/models/cart.dart';
import 'package:nike_snickers/models/shoes.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      Shoes getIndivizualShoe = value.getUserCart()[index];
                      return CartItem(
                        shoes: getIndivizualShoe,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
