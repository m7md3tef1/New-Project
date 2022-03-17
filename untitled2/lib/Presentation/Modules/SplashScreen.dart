/*

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled2/Presentation/Modules/AddProduct.dart';
class SplashScreen extends StatefulWidget {
   const SplashScreen({Key? key}) : super(key: key);
   static String id= 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    // TODO: implement
    super.initState();
    Timer(const  Duration(seconds: 3),
            (){
          Navigator.popAndPushNamed(context,AddProductScreen.id);
        } );
    print('hello');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('Image/100.jpg'),
      ),
    );
  }
}
 */
