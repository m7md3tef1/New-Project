import 'package:flutter/material.dart';
import 'package:untitled2/Presentation/Modules/AddProduct.dart';
import 'package:untitled2/Presentation/Modules/SplashScreen.dart';
import 'package:untitled2/constant/screens.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings? routeSettings) {
    switch (routeSettings!.name) {

      case AddProductScreenPath:
        return MaterialPageRoute(builder: (_)=>const  AddProductScreen());

    }
    }
}