import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextButton1 extends StatefulWidget {
  String? name;
  var path;
TextButton1({Key? key, this.name,this.path}) : super(key: key);
  @override
  _TextButton1State createState() => _TextButton1State();
}

class _TextButton1State extends State<TextButton1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child:  LayoutBuilder(

          builder:(context,cons)=>  Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, widget.path);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height*.08,
                      width:MediaQuery.of(context).size.width*.94,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius:
                          BorderRadius.circular(15)),

                      child: Center(
                        child: Text(
                          widget.name!,
                          style:const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ).tr(),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
