import 'package:app/model/CommentModel.dart';
import 'package:app/ui/widget/commentview.dart';
import 'package:flutter/material.dart';

class CommentsList extends StatelessWidget {
  final List<CommentModel> commentList;

  const CommentsList({Key key, this.commentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return commentList != null && commentList.length > 0
        ? Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Comments (${commentList.length})',
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: commentList.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
                  itemBuilder: (context, index) =>
                      CommentsView(commentModel: commentList[index]),
                )
              ],
            ),
          )
        : Container();
  }
}
