import 'package:flutter/material.dart';
import 'package:flutterworkshop/Model/FruitModel.dart';

class FruitProvider with ChangeNotifier {
  List<FruitModel> _allFruit = [];

  List<FruitModel> get allFruits => _allFruit;

  void loadData(List<Map<String, dynamic>> rawData) {
    _allFruit = rawData.map((e) {
      return FruitModel(
        fruitName: e['fruitName'] as String,
        image: e['image'] as String,
        price: e['price'] as double,
        description: e['description'] as String,
      );
    }).toList();
    
    notifyListeners();
  }
}
