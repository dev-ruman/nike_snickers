import 'package:flutter/material.dart';
import 'package:nike_snickers/components/shoe_tile.dart';
import 'package:nike_snickers/models/cart.dart';
import 'package:nike_snickers/models/shoes.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addShoeToCart(Shoes shoes) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoes);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Added Successfully'),
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      duration: Duration(milliseconds: 250),
    ));
  }

  @override
  Widget build(context) {
    return Consumer<Cart>(
      builder: (context, value, Widget? child) => Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200]),
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Take the high road and go higher',
              style: TextStyle(color: Colors.grey[600], fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hot Picks',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey[900]),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[900]),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.grey[200]),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  Shoes shoes = value.getShoeList()[index];
                  return ShoeTile(
                    onTap: () => addShoeToCart(shoes),
                    shoes: shoes,
                  );
                }),
          )
        ],
      ),
    );
  }
}
