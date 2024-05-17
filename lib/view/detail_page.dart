import 'package:flutter/material.dart';
import 'package:mulai_flutter/services/get_film.dart';

class DetailPage extends StatefulWidget {
  String filmId;
  DetailPage({super.key, required this.filmId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetFilm().getDetailFilm(widget.filmId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Detail Page\n${widget.filmId}'),
      ),
    );
  }
}
