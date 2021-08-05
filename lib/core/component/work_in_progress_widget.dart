import 'package:flutter/material.dart';

class WorkInProgressWidget extends StatefulWidget {
  WorkInProgressWidget({Key? key, this.message, this.messageTextStyle})
      : super(key: key);
  final String? message;
  final TextStyle? messageTextStyle;

  @override
  _WorkInProgressWidgetState createState() => _WorkInProgressWidgetState();
}

class _WorkInProgressWidgetState extends State<WorkInProgressWidget> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/gifs/beholder_gif.gif',
          width: deviceSize.width / 2,
          fit: BoxFit.fitWidth,
        ),
        if (widget.message != null)
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              widget.message!,
              style: widget.messageTextStyle,
            ),
          )
      ],
    );
  }
}
