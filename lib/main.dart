import 'package:app/ui/directMessage.dart';
import 'package:app/ui/liveStream.dart';
import 'package:app/ui/messages.dart';
import 'package:app/ui/profile.dart';
import 'package:app/ui/settings.dart';
import 'package:app/ui/signIn.dart';
import 'package:app/ui/uploads.dart';
import 'package:app/ui/videoStreaming.dart';
import 'package:app/ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'ui/directMessage.dart';
import 'ui/homepage.dart';
import 'ui/liveStream.dart';
import 'ui/messages.dart';
import 'ui/profile.dart';
import 'ui/signIn.dart';
import 'ui/uploads.dart';
import 'ui/videoStreaming.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: routing,
      home: SignInScreen(),
    );
  }
}
Route routing(RouteSettings settings, {String arguments}) {
  switch (settings.name) {
    case '/signinscreen':
      return PageTransition(
          child: SignInScreen(), type: PageTransitionType.rightToLeftWithFade);
      break;
    case '/homepagescreen':
      return PageTransition(
          child: HomePageScreen(), type: PageTransitionType.rightToLeftWithFade);
      break;
    case '/profile':
      return PageTransition(
          child: Profile(), type: PageTransitionType.rightToLeftWithFade);
      break;
    case '/messages':
      return PageTransition(
          child: Messages(), type: PageTransitionType.rightToLeftWithFade);
      break;
    case '/directmessage':
      return PageTransition(
          child: DirectMessage(), type: PageTransitionType.rightToLeftWithFade);
      break;  
    case '/uploads':
      return PageTransition(
          child: UploadScreen(), type: PageTransitionType.rightToLeftWithFade);
      break;    
    case '/videostreaming':
      return PageTransition(
          child: VideoStreaming(), type: PageTransitionType.rightToLeftWithFade);
      break;    
    case '/settings':
      return PageTransition(
          child: SettingsScreen(), type: PageTransitionType.rightToLeftWithFade);
      break;  
    case '/livestreamscreen':
      return PageTransition(
          child: LiveStreamScreen(), type: PageTransitionType.rightToLeftWithFade);
      break;
    default:
      return null;
      break;  
  }}

// Screens
//  LiveStreamScreen()
// SettingsScreen()
// UploadScreen()
// VideoStreaming()
//  DirectMessage()
//  HomePageScreen()
//  SignInScreen()
//  Messages()
//  Profile()
