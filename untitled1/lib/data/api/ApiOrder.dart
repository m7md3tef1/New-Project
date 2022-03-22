import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/Order.dart';
import '../../models/Product.dart';

class OrderApi {
  List<Product>? order;
  OrderApi(this.order);
  getOrders() async {
    await FirebaseFirestore.instance.collection('Order').get().then((value) {
      value.docs.forEach((element) {
        Product O = Product.fromJson(element.data());
        O.id = element.id;
        order?.add(O);
      });
    });
    return order;
  }
}
