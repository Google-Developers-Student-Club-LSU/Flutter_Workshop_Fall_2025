import 'package:flutter/material.dart';
import 'package:flutterworkshop/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.autoCorrect = false,
    this.onChanged,
    this.onSubmitted,
    this.keyboardType = TextInputType.text,
  });

  final TextEditingController? controller;
  final TextInputType keyboardType;
  final String? hintText;
  final bool obscureText;
  final bool autoCorrect;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [yellowColor,redColor,blueColor,greenColor],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),


          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              keyboardType: keyboardType,
              controller: controller,
              obscureText: obscureText,
              autocorrect: autoCorrect,
              onChanged: onChanged,
              onSubmitted: onSubmitted,
              style: const TextStyle(color: Colors.black87),
              cursorColor: Colors.white70,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(color: titleColor),
                isCollapsed: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
