import 'package:flutter/material.dart';

class DurationDisplay extends StatelessWidget {
  final time;
  DurationDisplay({this.time});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Duration',
            style: TextStyle(fontSize: 11, color: Colors.black54),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            time ?? 'time',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
