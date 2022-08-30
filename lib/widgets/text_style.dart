// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc_form/misc/appcolor.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget{

  final double size;
  final String text;
  final Color color;

  const TitleWidget({
    Key? key,
    required this.text,
    this.color = AppColors.bigTitleColorsblack,
    this.size = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
}
}