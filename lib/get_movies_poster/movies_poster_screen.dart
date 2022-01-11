import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_flutter_pro/configrations/success_movies_response.dart';
import 'package:mini_flutter_pro/general_app_screen/language_screen.dart';
import 'package:mini_flutter_pro/get_movies_poster/custom_loading.dart';
import 'package:mini_flutter_pro/get_movies_poster/movie_controller.dart';
import 'package:mini_flutter_pro/get_movies_poster/movie_item_widget.dart';

class MoviesPosters extends StatelessWidget {
  final MovieController controller = MovieController();

  @override
  Widget build(BuildContext context) {
    controller.getMoviesData();
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LanguageScreen()),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Obx(() {
        var state = controller.state.value;
        if (state is MoviesLoadingState) {
          return Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [CustomLoadingIndicator()],
              ),
            ),
          );
        }
        if (state is MoviesSuccessState) {
          return MoviesPostersSuccessWidget(state.successMovieOutputModel);
        }

        return Container();
      }),
    );
  }
}

class MoviesPostersSuccessWidget extends StatelessWidget {
  final List<SuccessOutputData> successMovieOutputModel;

  MoviesPostersSuccessWidget(this.successMovieOutputModel);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MovieItemWidget(successMovieOutputModel: successMovieOutputModel[index]),
      itemCount: successMovieOutputModel.length,
    );
    // return IncrementallyLoadingListView(
    //   shrinkWrap: true,
    //   itemCount: () => successMovieOutputModel.length,
    //   loadMoreOffsetFromBottom: 1,
    //   hasMore: () => state.hasMore,
    //   loadMore: () async => await controller.loadMoreRequests(context),
    //   itemBuilder: (context, index) => MovieItemWidget(successMovieOutputModel: successMovieOutputModel[index]),
    // );
  }
}
