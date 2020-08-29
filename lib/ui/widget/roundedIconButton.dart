import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final imageUrl;
  final size;
  RoundedIconButton(
      {@required this.iconData, this.color, this.imageUrl, this.size});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ), // ,
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 35,
          width: imageUrl == null ? 35 : 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: size ?? 20,
                color: color ?? Colors.black,
              ),
              if (imageUrl != null)
                SizedBox(
                  width: 5,
                ),
              if (imageUrl != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imageUrl ?? "assets/jpg/ThumbnailNotAvailable.jpg",
                    width: 25,
                    height: 25,
                    fit: BoxFit.fill,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
