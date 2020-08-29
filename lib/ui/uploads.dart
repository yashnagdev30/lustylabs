import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: Material(
                borderRadius: BorderRadius.circular(8.0),
                child: MaterialButton(
                  minWidth: 200,
                  onPressed: () {},
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'UPLOAD VIDEO',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Header(title: 'Upload'),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        _horzontalSizedHeight,
                        VideoUploadSection(),
                        _horzontalSizedHeight,
                        InputField(
                          title: 'Name',
                          maxlength: 100,
                          label: 'eg : How to create a drone',
                        ),
                        InputField(
                          title: 'Description',
                          maxlength: 2000,
                          label: 'Write video description...',
                          maxLines: 5,
                        ),
                        AllowComments(),
                      ],
                    ),
                  ),
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

class AllowComments extends StatefulWidget {
  @override
  _AllowCommentsState createState() => _AllowCommentsState();
}

class _AllowCommentsState extends State<AllowComments> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = value;
              });
            }),
        Text(
          'Allow comments',
          style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class InputField extends StatefulWidget {
  final title;
  final label;
  final int maxlength;
  final int maxLines;

  const InputField(
      {Key key,
      this.title,
      this.label,
      this.maxlength = 100,
      this.maxLines = 1})
      : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String input = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title ?? '',
                style: TextStyle(fontSize: 13, color: Colors.black45),
              ),
              Text(
                '${input.length}/${widget.maxlength}',
                style: TextStyle(fontSize: 13, color: Colors.black45),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: .5, color: Colors.black26),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            style: TextStyle(),
            onChanged: (value) {
              setState(() {
                input = value;
              });
            },
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              hintText: widget.label ?? '',
              hintStyle: TextStyle(
                fontSize: 13,
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
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
              onTap: (){
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

class VideoUploadSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.video_call,
                    size: 65,
                    color: Colors.black45,
                  ),
                  Text(
                    'Tap to add a video',
                    style: TextStyle(color: Colors.black45, fontSize: 13),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
