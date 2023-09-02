import 'package:flutter/material.dart';

import 'categories.dart';

class ProductsModel with ChangeNotifier {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductsModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image,
      this.rating});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }
  static List<ProductsModel> productsFromSnapshot(List productsSnaphot) {
    // print("data ${categoriesSnaphot[0]}");
    return productsSnaphot.map((data) {
      return ProductsModel.fromJson(data);
    }).toList();
  }
}
