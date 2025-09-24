import 'package:flutter/material.dart';
import 'package:flutterworkshop/constant.dart';

class CustomButton extends StatelessWidget {
  final String buttoName; 
  final VoidCallback onPressed;
  final double width;
  final double height;
  const CustomButton({super.key,
  required this.buttoName,
  required this.onPressed,
  this.height = 50,
  this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        alignment: Alignment.center,
        child: Text(
          buttoName, 
          style: TextStyle(
            fontSize: 20,
            color: titleColor,
            fontWeight: FontWeight.bold
          ),
        ),
        
      ),
    );
  }
}