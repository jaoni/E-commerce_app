import 'package:flutter/material.dart';

class Rating with ChangeNotifier {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  static List<Rating> categoriesFromSnapshot(List categoriesSnaphot) {
    // print("data ${categoriesSnaphot[0]}");
    return categoriesSnaphot.map((data) {
      return Rating.fromJson(data);
    }).toList();
  }
}
