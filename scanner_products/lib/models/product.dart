import 'dart:convert';

class Product {
  Product({
    required this.abc123,
    required this.abc123456,
  });

  Abc123 abc123;
  Abc123456 abc123456;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        abc123: Abc123.fromMap(json["ABC123"]),
        abc123456: Abc123456.fromMap(json["ABC123456"]),
      );

  Map<String, dynamic> toMap() => {
        "ABC123": abc123.toMap(),
        "ABC123456": abc123456.toMap(),
      };
}

class Abc123 {
  Abc123({
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  bool available;
  String name;
  String? picture;
  double price;

  factory Abc123.fromJson(String str) => Abc123.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Abc123.fromMap(Map<String, dynamic> json) => Abc123(
        available: json["available"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "name": name,
        "picture": picture,
        "price": price,
      };
}

class Abc123456 {
  Abc123456({
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  String available;
  String name;
  String? picture;
  double price;

  factory Abc123456.fromJson(String str) => Abc123456.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Abc123456.fromMap(Map<String, dynamic> json) => Abc123456(
        available: json["available"],
        name: json["name"],
        picture: json["picture"],
        price: json["price"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "name": name,
        "picture": picture,
        "price": price,
      };
}
