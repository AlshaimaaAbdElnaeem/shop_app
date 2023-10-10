import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.textSize,
    required this.textColor,
    this.backColor = Colors.white, required this.onPressed,
  });
  final String buttonText;
  final double textSize;
  final Color textColor;
  final Color backColor;
  final void Function() onPressed ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: textSize, color: textColor),
      ),
    );
  }
}
