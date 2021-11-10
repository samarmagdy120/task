class HomeModel {
  final String price;
  final String status;
  final DateTime? registered;

  // final List<String> tags;
  HomeModel(
      {required this.price, required this.status, required this.registered,});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      price: json['price'] as String,
      status: json['status'] as String,

      registered: json['registered'] != null ? DateTime.parse(
          json['registered'] as String) : null,
      // tags: json['tags'] != null ? (json['tags'] as List).map((e) => e.toString()).toList(): [],
    );
  }

}