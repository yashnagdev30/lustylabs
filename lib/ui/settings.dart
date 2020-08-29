import 'package:app/ui/widget/roundedIconButton.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(title: 'Settings'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _horzontalSizedHeight,
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: SettingListTile(
                      title: 'Edit Profile',
                    ),
                  ),
                  SettingListTile(
                    title: 'App Theme',
                  ),
                  Divider(
                    color: Colors.black45,
                  ),
                  SettingListTile(
                    title: 'Give us Feedback',
                  ),
                  SettingListTile(
                    title: 'About Lusty Labs',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signinscreen');
                    },
                    child: SettingListTile(
                      title: 'Log Out',
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  final Widget _horzontalSizedHeight = SizedBox(
    height: 20,
  );
}

class SettingListTile extends StatelessWidget {
  final title;
  final Color color;

  const SettingListTile({Key key, @required this.title, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Text(
          title ?? '',
          style: TextStyle(color: color ?? Colors.black, fontSize: 15),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final title;

  const Header({Key key, @required this.title}) : super(key: key);

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
