import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  TimeDisplay(
      {Key? key,
      required this.color,
      required this.duration,
      required this.onClear})
      : super(key: key);

  Duration duration = const Duration();
  Color color = Colors.green;
  final ValueChanged<Duration> onClear;

  void _onClicked() {
    onClear(duration);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            duration.toString(),
            style: TextStyle(fontSize: 32.0, color: color),
          ),
        ),
        IconButton(icon: const Icon(Icons.clear), onPressed: _onClicked)
      ],
    );
  }
}
