import 'package:flutter/material.dart';
import '../models/movie.dart';
import '/shared/theme.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 130,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * IMAGE
          Container(
            alignment: Alignment.center,
            width: 100,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: cLightGreyColor,
              image: DecorationImage(
                image: NetworkImage(movie.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // * TITLE
                Text(
                  movie.title,
                  style: purpleTextstyle.copyWith(
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 4,
                ),
                // * TYPE
                Text(
                  movie.type,
                  style: greyTextstyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // * YEAR
                Text(
                  movie.year,
                  style: lightGreyTextstyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
