import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final Color color;

  const LoaderWidget({Key? key, this.color = Colors.pinkAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}
