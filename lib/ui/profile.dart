
import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
              title: 'Profile',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileConatiner(
                      imageUrl: "assets/jpg/UserDP.jpg",
                      name: 'Meliodas Ackerman',
                      subscribers: '2k',
                      views: '33k',
                    ),
                    _horzontalSizedHeight,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReadMoreText(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.4),
                            trimLines: 3,
                            colorClickableText: Colors.blue,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: ' ... more',
                            trimExpandedText: ' less',
                          ),
                          _horzontalSizedHeight,
                          Text(
                            'Videos (33) ',
                            style:
                                TextStyle(fontSize: 13, color: Colors.black45),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) => ProfileVideoCard(
                              imageUrl: 'assets/jpg/VideoTwoImage.jpg',
                              title:
                                  'How to create an Anime Character in Adobe Photoshop',
                              duration: '23mins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final Widget _horzontalSizedHeight = SizedBox(
    height: 20,
  );
}

class ProfileConatiner extends StatelessWidget {
  final imageUrl;
  final name;
  final subscribers;
  final views;

  const ProfileConatiner(
      {Key key, this.imageUrl, this.name, this.subscribers, this.views})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(15)),
              height: 125,
              width: 125,
              child: Image.asset(
                imageUrl ?? "assets/jpg/ThumbnailNotAvailable.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            name ?? '',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            '$subscribers Subscribers, $views Views',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11.5),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 25),
                onPressed: () {
                  Navigator.pushNamed(context, '/messages');
                },
                child: Text(
                  'SUBSCRIBE',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/directmessage');
                },
                child: RoundedIconButton(
                  iconData: Icons.near_me,
                  size: 23.0,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/uploads');
                },
                              child: RoundedIconButton(
                  iconData: Icons.share,
                  size: 23.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileVideoCard extends StatelessWidget {
  final imageUrl;
  final title;
  final duration;

  const ProfileVideoCard({Key key, this.imageUrl, this.title, this.duration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(width: .5),
              // color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: Image.asset(
                    imageUrl ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? '',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        duration ?? '',
                        style: TextStyle(fontSize: 13, color: Colors.black45),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final title;
  const Header({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 10),
      child: Container(
        child: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: RoundedIconButton(iconData: Icons.arrow_back_ios)),
            SizedBox(
              width: 30,
            ),
            Text(
              title ?? '',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
