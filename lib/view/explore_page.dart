import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mulai_flutter/config/config.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Explore'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(fontSize: 12),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    prefixIcon: Image.asset(
                      'assets/icons/ic_search3.png',
                      color: Colors.black,
                      scale: 1.2,
                    ),
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CarouselSlider(
                  items: [
                    ...listOfPopularFilmData.map((film) => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                '${baseImageUrl}original/${film.backdropPath ?? ''}',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 10,
                                left: 20,
                                child: Text(
                                  film.title ?? '',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
