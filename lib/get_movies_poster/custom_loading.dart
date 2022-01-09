import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class CustomLoadingIndicator extends StatelessWidget {
  final bool invertColor;
  final bool isVertical;

  const CustomLoadingIndicator({this.invertColor = false, this.isVertical = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotatedBox(
        quarterTurns: isVertical ? 1 : 0,
        child: SpinKitThreeBounce(
          color: invertColor ? Colors.white : Colors.red,
          duration: Duration(milliseconds: 1000),
          size: 35,
        ),
      ),
    );
  }
}
