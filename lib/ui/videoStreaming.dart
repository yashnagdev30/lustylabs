import 'package:app/model/CommentModel.dart';
import 'package:app/ui/widget/addCommentButton.dart';
import 'package:app/ui/widget/commentList.dart';
import 'package:app/ui/widget/description.dart';
import 'package:app/ui/widget/durationDisplay.dart';
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

class VideoStreaming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              VideoCard(
                imageUrl: "assets/jpg/VideoOneImage.jpg",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    _horzontalSizedHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RoundedIconButton(iconData: Icons.arrow_back_ios),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
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
                    Description(
                      title:
                          'How to create an Anime Character in Adobe Photoshop',
                      body:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    ),
                    _horzontalSizedHeight,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DurationDisplay(
                          time: '23mins',
                        ),
                        Row(
                          children: [
                            RoundedIconButton(
                                iconData: Icons.bookmark, color: Colors.blue),
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
                    _horzontalSizedHeight,
                    SubscribeButton(),
                    SizedBox(
                      height: 15,
                    ),
                    AddCommentButton(),
                    _horzontalSizedHeight,
                    CommentsList(commentList: commentList),
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
