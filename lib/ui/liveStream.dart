import 'package:app/model/CommentModel.dart';
import 'package:app/ui/widget/description.dart';
import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:app/ui/widget/subscriptionButton.dart';
import 'package:app/ui/widget/videoCard.dart';
import 'package:flutter/material.dart';

List<CommentModel> commentList = [
  CommentModel(
      name: 'Michael Jordan',
      comment: 'Shut up and make a video on basketball!!'),
  CommentModel(
      name: 'Leborn James', comment: 'can you guys talk about basketball!!!!!'),
  CommentModel(
      name: 'Michael Jordan',
      comment: 'Shut up and make a video on basketball!!'),
  CommentModel(
      name: 'Michael Jordan',
      comment: 'Shut up and make a video on basketball!!'),
  CommentModel(
      name: 'Michael Jordan',
      comment: 'Shut up and make a video on basketball!!')
];

class LiveStreamScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Watching',
                  style: TextStyle(fontSize: 13, color: Colors.black45),
                ),
                Row(
                  children: [
                    Text(
                      '1021',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.remove_red_eye,
                      size: 16,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                RoundedIconButton(iconData: Icons.bookmark, color: Colors.blue),
                SizedBox(
                  width: 12,
                ),
                RoundedIconButton(iconData: Icons.share),
                SizedBox(
                  width: 12,
                ),
                RoundedIconButton(iconData: Icons.thumb_up),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              VideoCard(
                imageUrl: "assets/jpg/VideoTwoImage.jpg",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    _horzontalSizedHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: RoundedIconButton(iconData: Icons.arrow_back_ios)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(5),
                                    color: Colors.orange.withOpacity(.1),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Text(
                                    'Live Stream',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.orange),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'by ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Justin Mathew',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '27 Aug, 2020',
                              style: TextStyle(
                                  fontSize: 9.7, color: Colors.black54),
                            )
                          ],
                        ),
                      ],
                    ),
                    _horzontalSizedHeight,
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ), //  ,
                      elevation: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                            child: CommentsList(commentList: commentList),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFECECEC),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      keyboardType: TextInputType.text,
                                      decoration: new InputDecoration(
                                          fillColor:
                                              Color.fromRGBO(220, 220, 220, .1),
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black45),
                                          contentPadding: EdgeInsets.only(
                                              left: 15,
                                              bottom: 18,
                                              top: 0,
                                              right: 5),
                                          hintText: 'Write a comment' ?? ''),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  child: Center(
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  backgroundColor: Colors.orange,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    _horzontalSizedHeight,
                    SubscribeButton(),
                    _horzontalSizedHeight,
                    Description(
                      title:
                          'How to create an Anime Character in Adobe Photoshop',
                      body:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    ),
                    _horzontalSizedHeight,
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final Widget _horzontalSizedHeight = SizedBox(
    height: 20,
  );
}

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
                  'Comments',
                  style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  child: ListView.separated(
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: commentList.length,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                    itemBuilder: (context, index) =>
                        CommentsView(commentModel: commentList[index]),
                  ),
                ),
              ],
            ),
          )
        : Container();
  }
}

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
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          commentModel?.comment ?? '',
          style: TextStyle(
              fontSize: 13, color: Colors.black87, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
