import 'package:flutter/material.dart';
import 'package:nike_snickers/models/shoes.dart';

class ShoeTile extends StatefulWidget {
  Shoes? shoes;
  void Function()? onTap;

  ShoeTile({super.key, required this.shoes, required this.onTap});

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: width * 0.70,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              widget.shoes!.imagePath,
              height: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.shoes!.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ ${widget.shoes!.price}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              widget.shoes!.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[900]),
                    child: const Text(
                      'Add to cart',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
