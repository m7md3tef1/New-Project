import 'package:easy_localization/easy_localization.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_task/constant/Screens.dart';

import 'package:new_task/presentation/widget/CostomTextFormField.dart';
import 'package:new_task/presentation/widget/TextButton.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool passwordVisible = true;
  var icon1=Icons.check_box_outline_blank;
  var icon2=Icons.check_box_outlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: InkWell(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: LayoutBuilder(
                    builder: (context, cons) => Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Center(
                                child: Image(
                                  image: AssetImage('images/th.jpg'),
                                  fit: BoxFit.cover,

                                  width: cons.maxWidth*.5,
                                ),
                              ),
                            ),
                            Center(
                                child: Text(
                                  'third_string',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ).tr()
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Fourth_string',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ).tr(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Fifth_string',
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ).tr(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, cons) => Column(
                    children: [
                      Form(
                          child: Column(
                        children: [
                          CustomTextFormField(
                            name: ('Sixth_string').tr(),
                            hint: ('Seventh_string').tr(),
                            icondata: Icons.email,
                            secure: false,
                            keyboardType: TextInputType.emailAddress,
                          ),
                          CustomTextFormField(
                            name: ('Eighth_string').tr(),
                            hint: ('Ninth_string').tr(),
                            icondata: Icons.lock,
                            suffix: IconButton(
                              icon: Icon(passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            secure: passwordVisible,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ],
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  child: InkWell(
                                    onTap: (){
                                      icon1=icon2;
                                    },
                                    child: Icon(
                                  icon1,
                                      color: Colors.black12,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                ('tenth_string').tr(),
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Text(
                            ('Eleventh_string').tr(),
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          TextButton1(
                          path: HomeScreenPath,
                            name: ('twelve_string').tr(),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ('thirteen_string').tr(),
                                  style: TextStyle(fontSize: 14),
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context,signupPath);
                                  },
                                  child: Text(
                                    ('Fourteen_string').tr(),
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: cons.maxWidth * .4,
                                      child: Divider(
                                        color: Colors.black26,
                                        thickness: 3,
                                      )),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ('Fifteen_string'),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.green),
                                ).tr(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                      width: cons.maxWidth * .4,
                                      child: Divider(
                                        color: Colors.black26,
                                        thickness: 3,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon( FontAwesomeIcons.google,
                              color: Colors.red,),
                          ),
                          Image(image: AssetImage('images/facebook.png',),width: 50,height: 50,),
                          Image(image: AssetImage('images/Apple.png'),width: 50,height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, signwithphone);
                                },
                                child: Image(image: AssetImage('images/phone.jpg'),width: 50,height: 50,)),
                          ),
                        ],
                      )
                    ],
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
