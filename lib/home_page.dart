import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mulai_flutter/model/film_model.dart';
import 'package:mulai_flutter/theme.dart';
import 'package:mulai_flutter/widget/row_film.dart';

class HomePage extends StatefulWidget {
  String namaUser;
  HomePage({super.key, required this.namaUser});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  List<FilmModel> listOfFilm = [
    FilmModel(
      title: '1917',
      subtitle: 'Ini adalah Film Perang',
      image: 'assets/images/bg_image.png',
    ),
    FilmModel(
      title: 'Spiderman',
      subtitle: 'Ini adalah Film Super hero',
      image: 'assets/images/bg_image.png',
    ),
    FilmModel(
      title: 'Batman',
      subtitle: 'Ini adalah Film Kelalwar',
      image: 'assets/images/bg_image.png',
    ),
  ];

  List<Color> listOfColor = [Colors.red, Colors.yellow, Colors.green];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            _slideImage(),
            _indicator(),
            _rowFilm(),
          ],
        ),
      ),
    );
  }

  _rowFilm() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommend for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: mainColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 0; i < listOfFilm.length; i++)
                  RowFilm(
                    filmModel: listOfFilm[i],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _indicator() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < listOfColor.length; i++)
            i == currentIndex
                ? Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    width: 24,
                    height: 8,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )
                : Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),

          // ...listOfColor.map(
          //   (e) {
          //     return Container(
          //       margin: EdgeInsets.symmetric(horizontal: 2),
          //       width: 24,
          //       height: 8,
          //       decoration: BoxDecoration(
          //         color: mainColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }

  _slideImage() {
    return Container(
        height: 200,
        child: PageView.builder(
          itemCount: listOfColor.length,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage(listOfFilm[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        mainColor,
                        mainColor.withOpacity(0.9),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watch popular movies ${listOfFilm[index].title}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        listOfFilm[index].subtitle,
                        style: TextStyle(
                          color: Color(0xffCCC8F5),
                          // fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Watch Now',
                          style: TextStyle(
                            color: mainColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }

  _appBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25,
            backgroundImage: NetworkImage(
              'https://artriva.com/media/k2/galleries/20/d.jpg',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hi, ${widget.namaUser}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  'Let\'s watch a movie',
                  style: TextStyle(fontSize: 12, color: Color(0xff8C8E98)),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Image.asset('assets/icons/ic_search.png'),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.notifications_none_outlined,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
