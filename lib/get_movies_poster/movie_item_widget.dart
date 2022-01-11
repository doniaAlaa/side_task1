import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_flutter_pro/app_styling/app_padding.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';

class MovieItemWidget extends StatelessWidget {
  final SuccessOutputData successMovieOutputModel;
  MovieItemWidget({required this.successMovieOutputModel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.betweenPadding),
      child: ListTile(
          leading: Image.network("https://image.tmdb.org/t/p/w500/" + successMovieOutputModel.poster_path),
          title: Text(successMovieOutputModel.original_title),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Text("6"),
            Icon(
              Icons.star_rate,
              color: Colors.amberAccent,
            ),
          ])),
    );
  }
}
