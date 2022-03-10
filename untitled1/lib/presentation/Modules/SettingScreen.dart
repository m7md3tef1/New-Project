import 'package:flutter/material.dart';
import 'package:untitled1/constant/Screens.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: InkWell(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 3, 8, 8),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.question_mark_outlined,
                      color: Colors.black,
                    ),
                    prefixIcon: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.west,
                          color: Colors.black,
                          size: 20,
                        )),
                    label: const Center(
                      child: Text(
                        'Setting',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Image.asset('images/photo_2021-09-02_18-49-01.png'),
                  const Text(
                    'Menna Shafik ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Mennashafik@Gmail.Com',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AccontInfoPath);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '  Account Information',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.5,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AddressInfoPath);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '  Address Information ',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.5,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '  Language',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.5,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, BMRScreenPath);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '  Recalculate Bmr',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.5,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '  Dark Mode',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Icon(
                    Icons.change_circle,
                  ),
                ],
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Divider(
                  color: Colors.black26,
                  thickness: 1.5,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Log Out ',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
