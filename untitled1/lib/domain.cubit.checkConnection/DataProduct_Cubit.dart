import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/domain.cubit.checkConnection/DataProduct_State.dart';
import 'package:untitled1/models/Product.dart';
import 'package:untitled1/presentation/dialouges/toast.dart';

class DataProductCubit extends Cubit<DataProductState>{
  DataProductCubit( ) : super(InitialStateData());
  static DataProductCubit get(context)=>BlocProvider.of(context);
  Product? product;
 /* void getProducts() {
    emit(GetDataLoading());
    FirebaseFirestore.instance.collection('Product').doc().get().then((value){
      product=Product.fromJson(value.data()!);
      print(value.data());
      emit(GetDataSuccess());
    }).catchError((onError){
      print(onError.toString());
      emit(GetDataFailed(onError.toString()));
    });
  }*/
 void ProductGet(
      {
        required String name,
        required String price,
        required String size,
        required String Descreption,
        required String id,
   // required String type,
}){
    Product product =Product(
      name: name,
      price: price,
       id: id,
      Size: size,
      Description: Descreption,
    //  type: type,
    );
    FirebaseFirestore.instance.collection('Product').doc(id).get().then((value) {
      //print(value.data());
      product=Product.fromJson(value.data()!);
      emit(GetDataSuccess());
      showToast(msg: 'Done',state: ToastedStates.SUCCESS);
    }).catchError((onError){
      showToast(msg: onError.toString(),state: ToastedStates.ERROR);
      emit(GetDataFailed(onError));
    });
  }

}