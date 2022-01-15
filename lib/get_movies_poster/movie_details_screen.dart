import 'package:flutter/material.dart';
import 'package:mini_flutter_pro/app_styling/app_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:mini_flutter_pro/configrations/app_localization.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';

class MovieDetailsScreen extends StatelessWidget {
  final SuccessOutputData successMovieOutputModel;
  MovieDetailsScreen(this.successMovieOutputModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(valueOf('movie_details')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.mainPadding),
        child: ListView(
          children: [
            ListTile(
              leading: Image.network("https://image.tmdb.org/t/p/w500/" + successMovieOutputModel.poster_path),
              title: Text(successMovieOutputModel.original_title),
            ),
            Divider(
              height: 40,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: Text(valueOf('movie_discription')),
              title: Text(successMovieOutputModel.overview),
            ),
          ],
        ),
      ),
    );
  }
}
