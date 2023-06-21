import 'package:flutter/material.dart';
import 'package:nike_snickers/models/cart.dart';
import 'package:nike_snickers/models/shoes.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoes shoes;
  CartItem({super.key, required this.shoes});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Image.asset(widget.shoes.imagePath),
        title: Text(widget.shoes.title),
        subtitle: Text('\$ ${widget.shoes.price}'),
        trailing: GestureDetector(
            onTap: removeItemFromCart,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.delete,
                color: Colors.grey[100],
              ),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
            )),
      ),
    );
  }
}
