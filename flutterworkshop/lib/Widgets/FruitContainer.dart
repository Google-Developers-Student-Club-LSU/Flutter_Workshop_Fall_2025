
import 'package:flutter/material.dart';
import 'package:flutterworkshop/Model/FruitModel.dart';
import 'package:flutterworkshop/constant.dart';

class FruitContainer extends StatelessWidget {
  final FruitModel fruitModel;
  const FruitContainer({
    required this.fruitModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: yellowColor,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(fruitModel.image, width:150 , height: 150,),
          Text(fruitModel.fruitName, style: titleTextStyle.copyWith(fontSize: 20)),
          Text("Price: \$${fruitModel.price.toStringAsFixed(2)}", style: titleTextStyle.copyWith(fontSize: 12)),
          Text("Description: its an apple", style: textStyle)
          
          ]
          
      ),
    ) ;
  }
}