import 'package:get/get.dart';
import 'package:mini_flutter_pro/app_theme/app_toast.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';
import 'package:mini_flutter_pro/get_movies_poster/movies_client.dart';

class MovieController extends GetxController {
  final Rx<MovieState> state = Rx<MovieState>(MoviesInitialState());
  final MoviesClient moviesClient = MoviesClient();

  Future<void> getMoviesData() async {
    _setState(MoviesInitialState());
    var result = await moviesClient.syncMovies();
    if (result.isSuccess) {
      _setState(MoviesSuccessState(result.outputModel!.results));
    } else {
      //show toast meassage
      showToast(msg: "something went wrong ");
    }
  }

  _setState(MovieState newState) => state.value = newState;
}

abstract class MovieState {}

class MoviesInitialState implements MovieState {}

class MoviesLoadingState implements MovieState {}

class MoviesSuccessState implements MovieState {
  final List<SuccessOutputData> successMovieOutputModel;

  MoviesSuccessState(this.successMovieOutputModel);
}

class MoviesErrorState implements MovieState {}
