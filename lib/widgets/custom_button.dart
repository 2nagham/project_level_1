import 'package:flutter/material.dart';
import 'package:project_level_1/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 199,
      height: 53,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 80, spreadRadius: 1),
        ],
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [AppColors.primary, Colors.black45],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
