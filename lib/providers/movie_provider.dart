import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app_v2/models/movie.dart';

class MovieProvider with ChangeNotifier {
  Future getMovie() async {
    // * URL
    Uri url =
        Uri.parse('http://www.omdbapi.com/?apikey=397bbc73&s=harry%20potter');

    // * REQUEST GET
    var result = await http.get(url);

    if (result.statusCode == 200) {
      // * UBAH KE TYPE OBJECT
      List data = json.decode(result.body)['Search'];

      // * TELUSURI ELEMENT
      List<Movie> movie = data.map((e) => Movie.fromJson(e)).toList();
      return movie;
    } else {
      return <Movie>[];
    }
  }
}
