import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        children: [
          Expanded(
            child: Icon(
              Icons.image_outlined,
              size: 70,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Swiss',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.access_time_filled_outlined),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star_border,
                size: 15,
              ),
              SizedBox(
                width: 50,
              ),
              Text('4.5'),
            ],
          ),
        ],
      ),
    );
  }
}
