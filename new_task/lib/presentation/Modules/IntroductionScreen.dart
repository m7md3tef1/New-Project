import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      skip: Text('Skip'),
      done: Text('Get Started'),
      next: Icon(Icons.arrow_forward),
      showNextButton: true,
      showSkipButton: true,
        pages: [
    PageViewModel(
    image: Image.asset('images/Mask Group 2.png'
    ),
    title: 'Welcome Back !',
    body:'Let \'s Make A Delicious Healthy Food With The Best Recipe For The Familiy'
    ),
    PageViewModel(
    image: Image.asset('images/Mask Group 2.png'),
    title: 'Fast Delivery Services',
    body: ' Let \'s Make A Delicious Healthy Food With The Best Recipe ForThe Familiy'),
  ]
    );
  }
}
