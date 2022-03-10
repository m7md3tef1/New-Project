class Product {
  String? id;
  String? name;
  var price;
  String? Size;
  String? imgurl;
  String? Description;
  String? type;
  int? counter = (1);
  Product(
      {this.type,
      this.counter,
      this.name,
      this.price,
      this.id,
      this.Description,
      this.imgurl,
      this.Size});
}
