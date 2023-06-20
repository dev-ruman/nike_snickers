import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(context) {
    return Consumer<Cart>(
      builder: (context, value, child) => const Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
