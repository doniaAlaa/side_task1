import 'package:flutter/cupertino.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';

class MovieItemWidget extends StatelessWidget {
  final SuccessOutputData successMovieOutputModel;
  MovieItemWidget({required this.successMovieOutputModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(successMovieOutputModel.original_title),
    );
  }
}
