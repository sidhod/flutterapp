import 'package:flutter/cupertino.dart';

var data = [
  {
    "name": "Mens Maroon ChecksFormal Shirt",
    "price": 2599.0,
    "fav": false,
    "rating": 4.5,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02448WINELS_IT_02.jpg"
  },
  {
    "name": "Mens Maroon Slim Fit Casual Shirt",
    "price": 1000.0,
    "fav": false,
    "rating": 4.5,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02386PLUM%20MELLS_IT_02.jpg"
  },
  {
    "name": "Mens Maroon Checks Casual Shirt",
    "price": 999.0,
    "fav": false,
    "rating": 4.5,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH03203BURGUNDYLS_IT_02.jpg"
  },
  {
    "name": "Mens Maroon Checks Slim Formal Shirt",
    "price": 1119.0,
    "fav": false,
    "rating": 3.5,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02442WINELS_IT_02.jpg"
  },
  {
    "name": "Mens Green Checks Slim Fit Casual Shirt",
    "price": 999.0,
    "fav": false,
    "rating": 4.5,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02376PINELS_IT_02.jpg"
  },
  {
    "name": "Mens Green Checks Formal Shirt",
    "price": 2499.0,
    "fav": false,
    "rating": 4.0,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02448GREENLS_IT_02.jpg"
  },
  {
    "name": "Mens Green Checks Slim Fit Formal Shirt",
    "price": 2399.0,
    "fav": false,
    "rating": 4.0,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02440PINELS_IT_02.jpg"
  },
  {
    "name": "Mens Green Checks Slim Fit Casual Shirt",
    "price": 1119.0,
    "fav": false,
    "rating": 4.9,
    "image":
    "https://storage.sg.content-cdn.io/cdn-cgi/image/width=600,height=800,quality=90,format=auto,fit=cover,g=top/in-resources/22a79ec5-e694-4d7a-ac5a-85c8fa45b7f1/Images/ProductImages/Source/ITMSH02386PINE%20MELLS_IT_02.jpg"
  }
];

class ShopItemModel {
  String name;
  double price;
  bool fav;
  double rating;
  String image;
  int id;
  int? shopId;

  ShopItemModel(
      {this.shopId,
        required this.id,
        required this.fav,
        required this.rating,
        required this.price,
        required this.image,
        required this.name});

  factory ShopItemModel.fromJson(Map<String, dynamic> json) {
    return ShopItemModel(
      id: json['id'],
      fav: json['fav'] == 1,
      rating: json['rating'],
      price: json['price'],
      image: json['image'],
      name: json['name'],
      shopId: json['shop_id'] ?? 0,
    );
  }
}
