import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(
              title: 'Messages',
            ),
            _horzontalSizedHeight,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SearchBox(
                label: 'Search videos...',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
              color: Color(0xFFECECEC),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 unread message',
                      style: TextStyle(fontSize: 10, color: Colors.black38),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/directmessage');
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              ExactAssetImage('assets/jpg/UserDP.jpg'),
                        ),
                        title: Text(
                          'Meliodas Ackerman',
                        ),
                        subtitle: Text(
                          'Actually you  got the wrong guy here',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/directmessage');
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              ExactAssetImage('assets/jpg/VideoTwoImage.jpg'),
                        ),
                        title: Text(
                          'Warrner Buffet',
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text(
                          'Can you transfer me some money ;)',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/directmessage');
                      },
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0.0),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              ExactAssetImage('assets/jpg/VideoOneImage.jpg'),
                        ),
                        title: Text(
                          'Bill Gates',
                          style: TextStyle(color: Colors.black54),
                        ),
                        subtitle: Text(
                          'Damn you Bezos!!!!',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    )
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
