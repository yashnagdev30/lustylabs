import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final imageUrl;
  VideoCard({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                offset: Offset(0, 2),
                color: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18),
            ),
            child: Image.asset(
              imageUrl ?? "assets/jpg/ThumbnailNotAvailable.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 65),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle_filled,
              size: 70,
              color: Colors.black.withAlpha(100),
            ),
          ),
        )
      ],
    );
  }
}
