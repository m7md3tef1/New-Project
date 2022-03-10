import 'package:flutter/material.dart';
import 'package:new_task/constant/Screens.dart';
import 'package:new_task/data/cacheHelper.dart';
import 'package:new_task/presentation/Modules/HomeScreen.dart';
import 'package:new_task/presentation/Modules/IntroductionScreen.dart';
import 'package:new_task/presentation/Modules/OtbPhoneScreen.dart';
import 'package:new_task/presentation/Modules/SignInScreen.dart';
import 'package:new_task/presentation/Modules/SignWithPhone.dart';
import 'package:new_task/presentation/Modules/SignupScreen.dart';
import 'package:new_task/presentation/Modules/mapScreen.dart';
import 'package:new_task/presentation/Modules/splash.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          bool onBoard = CacheHelper.getkey('onBoarding');
          if (onBoard) {
            return SplashScreen(
              nextScreen: SigninScreen(),
            );
          } else {
            return SplashScreen(
              nextScreen: IntroScreen(),
            );
          }
        });
      case introPath:
        return MaterialPageRoute(builder: (_) => IntroScreen());
      case signinPath:
        return MaterialPageRoute(builder: (_) => SigninScreen());
      case signwithphone:
        return MaterialPageRoute(builder: (_) => SignWithPhone());
      case signupPath:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case HomeScreenPath:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case OtbPhoneScreenPath:
        return MaterialPageRoute(builder: (_)=> OtpPhoneScreen());
      case MapScreenPath:
        return MaterialPageRoute(builder: (_)=>MapScreen());
    }
  }
}
