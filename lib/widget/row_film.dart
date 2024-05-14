import 'package:flutter/material.dart';
import 'package:mulai_flutter/config/config.dart';
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    '${baseImageUrl}original/${filmModel.posterPath ?? ''}',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15)),
          ),
          Text(
            filmModel.title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            filmModel.overview ?? "-",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
