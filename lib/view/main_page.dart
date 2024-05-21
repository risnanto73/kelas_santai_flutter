import 'package:flutter/material.dart';
import 'package:mulai_flutter/theme.dart';
import 'package:mulai_flutter/view/explore_page.dart';
import 'package:mulai_flutter/view/home/home_page.dart';
import 'package:mulai_flutter/widget/custom_bottom_navigation.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List listOfPage = [
    HomePage(namaUser: ''),
    ExplorePage(),
    ExplorePage(),
    HomePage(namaUser: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Column(
              children: [
                Image.asset(
                  'assets/icons/ic_home.png',
                  color: currentIndex == 0 ? mainColor : Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                currentIndex == 0
                    ? Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Column(
              children: [
                Image.asset(
                  'assets/icons/ic_search3.png',
                  color: currentIndex == 1 ? mainColor : Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                currentIndex == 1
                    ? Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Column(
              children: [
                Image.asset(
                  'assets/icons/ic_home.png',
                  color: currentIndex == 2 ? mainColor : Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                currentIndex == 2
                    ? Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Column(
              children: [
                Image.asset(
                  'assets/icons/ic_home.png',
                  color: currentIndex == 3 ? mainColor : Colors.grey,
                ),
                SizedBox(
                  height: 5,
                ),
                currentIndex == 3
                    ? Container(
                        height: 5,
                        width: 30,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ],
      ),
      body: listOfPage[currentIndex],
    );
  }

  _bottomNavigation() {
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
                currentIndex = 0;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
              color: currentIndex == 0 ? mainColor : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                currentIndex = 1;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_search3.png',
              color: currentIndex == 1 ? mainColor : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                currentIndex = 2;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
              color: currentIndex == 2 ? mainColor : Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                currentIndex = 3;
              });
            },
            icon: Image.asset(
              'assets/icons/ic_home.png',
              color: currentIndex == 3 ? mainColor : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
