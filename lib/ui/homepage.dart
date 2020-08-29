import 'package:flutter/material.dart';
import 'package:app/ui/widget/roundedIconButton.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            HeaderHomePage(title: 'Lusty Labs'),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    _horzontalSizedHeight,
                    SearchBox(
                      label: 'Search videos...',
                    ),
                    _horzontalSizedHeight,
                    HompageCard(
                      imageUrl: 'assets/jpg/VideoTwoImage.jpg',
                      title:
                          'How to create an Anime Character in Adobe Photoshop',
                    ),
                    _horzontalSizedHeight,
                    HompageCard(
                      imageUrl: 'assets/jpg/VideoOneImage.jpg',
                      title:
                          'How to create an Anime Character in Adobe Photoshop',
                    ),
                    _horzontalSizedHeight,
                  ],
                ),
              ),
            ))
          ],
        )),
      ),
    );
  }

  final Widget _horzontalSizedHeight = SizedBox(
    height: 20,
  );
}

class SearchBox extends StatelessWidget {
  final label;

  const SearchBox({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Material(
          borderRadius: BorderRadius.circular(8.0),
          child: MaterialButton(
            minWidth: 200,
            color: Color(0xFFECECEC),
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.search,
                  color: Colors.black45,
                  size: 25,
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        fillColor: Color.fromRGBO(220, 220, 220, .1),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 13, color: Colors.black45),
                        contentPadding: EdgeInsets.only(
                            left: 5, bottom: 5, top: 0, right: 5),
                        hintText: label ?? ''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HompageCard extends StatelessWidget {
  final imageUrl;
  final title;

  const HompageCard({Key key, this.imageUrl, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          // borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 280,
            decoration: BoxDecoration(
              border: Border.all(width: .5),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
            height: 200,
            child: Image.asset(
              imageUrl ?? '',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title ?? "NAME NOT AVAILABLE",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/livestreamscreen');
                    },
                    child: Text("Details"),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HeaderHomePage extends StatelessWidget {
  final title;
  const HeaderHomePage({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 3,
                  width: 40,
                  color: Colors.black,
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/settings");
              },
                          child: RoundedIconButton(
                iconData: Icons.more_horiz,
                size: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
