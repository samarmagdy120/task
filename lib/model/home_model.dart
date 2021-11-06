class HomeModel {
  late final String price;
  late final String status;
  late final String registered;


  HomeModel.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    status = json['status'];
    registered = json['registered'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['price'] = this.price;
  //   data['status'] = this.status;
  //   data['registered'] = this.registered;
  //   return data;
  // }
}