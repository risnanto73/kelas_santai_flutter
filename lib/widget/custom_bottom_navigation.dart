import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  int index;
  CustomBottomNavigation({super.key, required this.index});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
        ),
      ]),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                widget.index = 0;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.index = 1;
                print(widget.index);
              });
            },
            icon: Image.asset(
              'assets/icons/ic_search3.png',
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.index = 2;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.index = 3;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
            ),
          ),
        ],
      ),
    );
  }
}
