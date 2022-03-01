import 'package:flutter/material.dart';
import 'package:movie_app_v2/shared/theme.dart';
import '/providers/movie_provider.dart';
import '/widgets/movie_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var movieProv = Provider.of<MovieProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie App Using OMDB API'),
        centerTitle: true,
        backgroundColor: cPurpleColor,
        leading: const Icon(
          Icons.menu,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: FutureBuilder(
          future: movieProv.getMovie(),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var data = snap.data as List;
              return ListView(
                children: data
                    .map(
                      (item) => MovieCard(
                        movie: item,
                      ),
                    )
                    .toList(),
              );
            }
          },
        ),
      ),
    );
  }
}
