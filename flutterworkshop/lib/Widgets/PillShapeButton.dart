import 'package:flutter/material.dart';
import 'package:flutterworkshop/constant.dart';

class PillShapeButton extends StatelessWidget {
  final int index;
  final void Function(int) onChanged;
  final String leftText;
  final String rightText;

  const PillShapeButton({
    required this.index,
    required this.onChanged,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, cons){
      final tabWidth = cons.maxWidth / 2;
      return Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.red.withValues(alpha: .3),
            borderRadius: BorderRadius.circular(999),
          ),
        child: Stack(
          children: [
            AnimatedAlign(
            alignment: index == 0 ? Alignment.centerLeft : Alignment.centerRight,
            duration: Duration(milliseconds: 250),
            curve: Curves.bounceInOut,
            child: Container(
              width: tabWidth,
              height: 50,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius:BorderRadius.circular(999),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                onPressed: () => onChanged(0), 
                style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        foregroundColor:
                            index == 0 ? Colors.black : Colors.black54,
                      ), 
                child: Text(
                  leftText,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ) ,
              )
              ),
               Expanded(
                child: TextButton(
                onPressed: () => onChanged(1), 
                style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        foregroundColor:
                            index == 1 ? Colors.black : Colors.black54,
                      ), 
                child: Text(
                  rightText,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ) ,
              )
              ),
            ],
          )
          ],
        ),
      );

    }
    );
  }
}