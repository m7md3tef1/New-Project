import 'dart:async';

import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'package:new_task/constant/Screens.dart';

import 'package:new_task/domain.cubit.checkConnection/auth/auth_cubit.dart';
import 'package:new_task/domain.cubit.checkConnection/auth/auth_state.dart';
import 'package:new_task/domain.cubit.checkConnection/locationCubit.dart';
import 'package:new_task/domain.cubit.checkConnection/locationState.dart';
import 'package:new_task/presentation/dialouges/toast.dart';
import 'package:new_task/presentation/widget/CostomTextFormField.dart';
import 'package:new_task/presentation/widget/TextButton.dart';

class SignWithPhone extends StatefulWidget {
  SignWithPhone({Key key}) : super(key: key);

  @override
  _SignWithPhoneState createState() => _SignWithPhoneState();
}

class _SignWithPhoneState extends State<SignWithPhone> {
  @override
  bool showcountry = true;
  bool passwordVisible = true;
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  Widget build(BuildContext context) {
    return BlocConsumer<LocationCubit,LocationState>(
      listener: (context, state ){

      },
      builder:(context, state) =>  BlocConsumer<PhoneAuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) => Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: InkWell(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.white,
                      child: LayoutBuilder(
                        builder: (context, cons) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: Image(
                                    image: AssetImage('images/th.jpg'),
                                    width: cons.maxWidth * .5,
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'Twenty six_string',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                Alignment.topLeft,
                                                            child: Text(
                                                              ('Twenty-two_string')
                                                                  .tr(),
                                                              style: TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              6.0),
                                                      child: Container(
                                                        height:
                                                            MediaQuery.of(context)
                                                                    .size
                                                                    .height *
                                                                .08,
                                                        width:
                                                            MediaQuery.of(context)
                                                                .size
                                                                .width,
                                                        decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: Colors
                                                                  .grey[900]),
                                                        ),
                                                        child: TextFormField(
                                                          obscureText: false,
                                                          controller: controller2,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText: showcountry
                                                                ? ('Twenty three_string')
                                                                    .tr()
                                                                : controller2,
                                                            prefixIcon: InkWell(
                                                              onTap: () {
                                                                showCountryPicker(
                                                                  context:
                                                                      context,
                                                                  showPhoneCode:
                                                                      true, // optional. Shows phone code before the country name.
                                                                  onSelect: (Country
                                                                      country) {
                                                                    controller2
                                                                            .text =
                                                                        country
                                                                            .displayName;
                                                                    print(
                                                                        'Select country: ${country.displayName}');
                                                                  },
                                                                );
                                                              },
                                                              child: Icon(
                                                                  Icons.flag),
                                                            ),
                                                            border:
                                                                InputBorder.none,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomTextFormField(
                                                name: ('Twenty four_string').tr(),
                                                hint: '1068382215',
                                                controller: controller,
                                                icondata: Icons.phone,
                                                color: Colors.green,
                                                secure: false,
                                                keyboardType: TextInputType.phone,
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () async
                                            {
                                            LocationCubit.get(context).Location();
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.location_on),
                                                ],
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              PhoneAuthCubit.get(context)
                                                  .PhoneAuth(controller.text);
                                              print(controller.text);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 20),
                                                  child: TextButton1(
                                                    path: OtbPhoneScreenPath,
                                                    name: 'Twenty Five_string',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
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
        ),
      ),
    );
  }
}
