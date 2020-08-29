import 'package:app/model/CommentModel.dart';
import 'package:flutter/material.dart';

class CommentsView extends StatelessWidget {
  final CommentModel commentModel;
  const CommentsView({Key key, this.commentModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          commentModel?.name ?? '',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          commentModel?.comment ?? '',
          style: TextStyle(fontSize: 13, color: Colors.black87),
        ),
      ],
    );
  }
}
