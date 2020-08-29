import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          HeaderSignIn(
            title: 'Lusty Labs',
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: SvgPicture.asset(
                "assets/svg/HumanGraphic.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Flexible(flex: 2, child: Container()),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                      child: Text(
                        'Enter the world of smart & efficient video sharing',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Flexible(flex: 5, child: Container()),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/homepagescreen');
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 28,
                              width: 28,
                              child: SvgPicture.asset(
                                "assets/svg/GoogleIcon.svg",
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(flex: 3, child: Container()),
                  Column(
                    children: [
                      Text(
                        'By signing in you accept our.',
                        style: TextStyle(
                          fontSize: 10.5,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(
                              fontSize: 10.5,
                              color: Colors.black45,
                              decoration: TextDecoration.underline),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                  fontSize: 10.5,
                                  color: Colors.black45,
                                  decoration: TextDecoration.none),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                      fontSize: 10.5,
                                      color: Colors.black45,
                                      decoration: TextDecoration.underline),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Flexible(flex: 1, child: Container()),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

class HeaderSignIn extends StatelessWidget {
  final title;
  const HeaderSignIn({Key key, @required this.title}) : super(key: key);
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
          ],
        ),
      ),
    );
  }
}
