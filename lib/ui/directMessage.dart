import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:flutter/material.dart';

class DirectMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Column(
        children: [
          Header(
            title: 'Meliodas Ackerman',
            imageUrl: "assets/jpg/VideoOneImage.jpg",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Conversation(
                    time: '12:37',
                    text: 'Hey there, this is Meliodas from your squad of 7',
                    isSend: false,
                  ),
                  Conversation(
                    time: '12:37',
                    text:
                        "Lorem Ipsum is simply dummy text of  scrambled it to make a type specimen book.",
                    isSend: true,
                  ),
                  Conversation(
                    time: '12:37',
                    text: 'Hey there, this is Meliodas from your squad of 7',
                    isSend: false,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '28 Aug 2020',
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  ),
                  Conversation(
                    time: '12:37',
                    text: 'Hey there, this is Meliodas from your squad of 7',
                    isSend: true,
                  ),
                  Conversation(
                    time: '12:37',
                    text: 'Hey there, this is Meliodas from your squad of 7',
                    isSend: false,
                  )
                ],
              ),
            ),
          ),
          Container(
            // height: 40,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedInputField(
                      label: 'message @Meliodas',
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  RoundedIconButton(
                    iconData: Icons.attach_file,
                    size: 22.0,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  RoundedIconButton(
                    iconData: Icons.mic,
                    size: 22.0,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class Conversation extends StatelessWidget {
  final time;
  final text;
  final bool isSend;

  const Conversation(
      {Key key, this.time, this.text, this.isSend = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSend ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: ClipRRect(
            borderRadius: isSend
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  )
                : BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
            child: Container(
              width: MediaQuery.of(context).size.width * .75,
              color: isSend
                  ? Colors.blue.withOpacity(.1)
                  : Colors.grey.withOpacity(.1),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                crossAxisAlignment:
                    isSend ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Text(
                    time ?? '',
                    style: TextStyle(fontSize: 12, color: Colors.black45),
                  ),
                  Text(
                    text ?? '',
                    textAlign: isSend ? TextAlign.end : TextAlign.start,
                    style: TextStyle(fontSize: 12, height: 1.3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//Note It require width size to be passed by parent
class RaisedInputField extends StatelessWidget {
  final label;

  const RaisedInputField({Key key, this.label}) : super(key: key);

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
            // width: 200,
            // width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black45),
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 10, top: 0, right: 15),
                  hintText: label ?? ''),
            )),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final title;
  final imageUrl;
  const Header({
    Key key,
    @required this.title,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 10),
      child: Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                          child: RoundedIconButton(
                  iconData: Icons.arrow_back_ios, imageUrl: imageUrl),
            ),
            SizedBox(
              width: 15,
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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
