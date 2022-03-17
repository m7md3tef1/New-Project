import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/domin/ProductCubit.dart';
import 'package:untitled2/domin/ProductState.dart';
import 'package:untitled2/models/Product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static String id = 'AddProduct';
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  String Name = '';
  var price = '';
  String Description = '';
  var size = '';
  var id = '';
  Product product = Product();
 var  adminKey = GlobalKey<FormState>();
  var s = true;
  TextEditingController controller = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPrice = TextEditingController();
  TextEditingController controllerSize= TextEditingController();
  TextEditingController controllerDes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DataProductCubit,DataProductState>(
      listener: (context, state) {} ,
        builder: (context, state)=> Scaffold(
          backgroundColor: Colors.grey[200],
          body: InkWell(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightGreen),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,

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
                            'Add Product',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: adminKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextForm(

                            'Product Name',
                            (v) {
                              setState(() {
                                Name = v;
                              });
                            },
                            (v) {
                              if (v.toString().isEmpty) {
                                return 'Please Enter Name';
                              }
                            },


                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextForm(

                            'Product Price',
                            (v) {
                              setState(() {
                                price = v;
                              });
                            },
                            (v) {
                              if (v.toString().isEmpty) {
                                return 'Please Enter Price';
                              }
                            },
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextForm(
                            'Product Description',
                            (v) {
                              setState(() {
                                Description = v;
                              });
                            },
                            (v) {
                              if (v.toString().isEmpty) {
                                return 'Please Enter Description ';
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(

                              labelText: 'id' ,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onSaved: (v) {
                              setState(() {
                                id  = v!;
                              });
                            },
                             validator:  (v) {
                               if (v.toString().isEmpty) {
                                 return 'Please Enter size ';
                               }
                             },
                          )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomTextForm(
                            'size',
                                (v) {
                              setState(() {
                                size = v;
                              });
                            },
                                (v) {
                              if (v.toString().isEmpty) {
                                return 'Please Enter size ';
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .06,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () async {
                              try{
                              if (adminKey.currentState!.validate()) {
                                adminKey.currentState?.save();
                                DataProductCubit.get(context).userCreate(name: Name,
                                    price: price,
                                    size: size,
                                    id: id,
                                    Descreption: Description );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text( Name +''+'تم اضافه ' )));


                              }
                            }
                            catch(e){
                                print(e.toString());
                            }},

                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreen,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.add_box_rounded,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(50, 10, 10, 10),
                                        child: Center(
                                          child: Text(
                                            'Add Product',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  TextFormField CustomTextForm(label, onSaved, validator) {
    return TextFormField(
      decoration: InputDecoration(

        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
