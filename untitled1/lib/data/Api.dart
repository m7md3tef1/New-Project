import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Product.dart';
List<Product>? products;
getProducts() {
  return FirebaseFirestore.instance.collection('Product').doc().get().then((value) {
    value=products as DocumentSnapshot<Map<String, dynamic>>;
    print(value);
  });
}