import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_task/constant/Screens.dart';

import 'package:new_task/presentation/widget/CostomTextFormField.dart';
import 'package:new_task/presentation/widget/TextButton.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  bool passwordVisible = true;

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Image(
                                image: AssetImage('images/th.jpg'),
                                fit: BoxFit.cover,
                                width: cons.maxWidth * .5,
                              ),
                            ),
                            Center(
                              child: Text(
                                'Twenty seven_string',
                                style: TextStyle(fontSize: 20),
                              ).tr(),
                            ),
                          ],
                        ),
                        Column(
                          children: [

                            LayoutBuilder(
                              builder: (context, cons) => Column(
                                children: [
                                  Form(
                                      child: Column(
                                    children: [
                                      CustomTextFormField(
                                        name: ('Sixteen_string').tr(),
                                        hint: ('Seventeen_string').tr(),
                                        icondata: Icons.person,
                                        secure: false,
                                        keyboardType: TextInputType.name,
                                      ),
                                      CustomTextFormField(
                                        name: ('Sixth_string').tr(),
                                        hint: ('Seventh_string').tr(),
                                        icondata: Icons.email,
                                        color: Colors.black12,
                                        secure: false,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                      CustomTextFormField(
                                        name: ('Eighteen_string').tr(),
                                        hint: ('Nineteen_string').tr(),
                                        color: Colors.black12,
                                        secure: false,
                                        icondata: Icons.flag,
                                        keyboardType: TextInputType.phone,
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
                                              passwordVisible =
                                                  !passwordVisible;
                                            });
                                          },
                                        ),
                                        secure: passwordVisible,
                                        keyboardType:
                                            TextInputType.visiblePassword,
                                      ),
                                      Row(
                                        children: [
                                          TextButton1(
                                            path: signinPath,
                                            name: ('Fourteen_string').tr(),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'twenty_string',
                                            style: TextStyle(fontSize: 14),
                                          ).tr(),
                                          InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'Twenty one_string',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.green),
                                              ).tr())
                                        ],
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
