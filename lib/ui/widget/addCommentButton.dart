import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddCommentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: DottedBorder(
        color: Colors.black.withOpacity(.5),
        strokeWidth: 1,
        dashPattern: [4, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              borderRadius: BorderRadius.circular(8.0),
              child: MaterialButton(
                minWidth: 200,
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Tap to add a comment',
                    style: TextStyle(color: Colors.black45, fontSize: 13),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
