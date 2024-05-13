import 'package:flutter/material.dart';
import 'package:mulai_flutter/model/film_model.dart';

class RowFilm extends StatelessWidget {
  FilmModel filmModel;
  RowFilm({
    super.key,
    required this.filmModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg_image.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)),
          ),
          Text(
            filmModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            filmModel.subtitle,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
