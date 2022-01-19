import 'package:get/get.dart';
import 'package:mini_flutter_pro/app_theme/app_toast.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';
import 'package:mini_flutter_pro/get_movies_poster/movies_client.dart';

class MovieController extends GetxController {
  final Rx<MovieState> state = Rx<MovieState>(MoviesInitialState());
  final MoviesClient moviesClient = MoviesClient();
  late int pageNumber = 0;
  // late int currentPage;
  RxBool isLoading = false.obs;

  Future<void> getMoviesData() async {
    isLoading.value = true;
    var result = await moviesClient.syncMovies(pageNumber + 1);
    isLoading.value = false;
    if (result.isSuccess && result.outputModel != null) {
      pageNumber++;
      var currentPage = pageNumber + 1;
      if (currentPage <= 33) {
        _setState(MoviesSuccessState(result.outputModel!.results, true));
      } else {
        showToast(msg: "something went wrong ");
      }
    }
  }

  Future<void> loadMoreMovies() async {
    var state = _ensureState<MoviesSuccessState>()!;
    isLoading.value = true;
    var result = await moviesClient.syncMovies(pageNumber + 1);
    isLoading.value = false;
    if (result.isSuccess && result.outputModel != null) {
      pageNumber++;
      var currentPage = pageNumber + 1;
      if (currentPage <= 33) {
        // to not lost the first page (adding next pages to the last pages without lost any previous pages)
        _setState(MoviesSuccessState(state.successMovieOutputModel + result.outputModel!.results, true));
      } else {
        showToast(msg: "something went wrong ");
      }
    }
  }

  TState? _ensureState<TState>() {
    if (state.value is! TState) {
      throw Exception("Unexpected state");
    }

    return state.value as TState?;
  }

  _setState(MovieState newState) => state.value = newState;
}

abstract class MovieState {}

class MoviesInitialState implements MovieState {}

class MoviesLoadingState implements MovieState {}

class MoviesSuccessState implements MovieState {
  final List<SuccessOutputData> successMovieOutputModel;
  final bool hasMore;

  MoviesSuccessState(this.successMovieOutputModel, this.hasMore);
}

class MoviesErrorState implements MovieState {}
