import 'package:flutter/material.dart';
import 'package:untitled/const.dart';
class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({super.key,
    required this.title ,
    this.color = const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return   Expanded (
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: InkWell(
            onTap: onPress,
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Center(
                child: Text(title, style: headingTextStyle),
              ),

            ),
          ),
      ),
    );
  }
}
