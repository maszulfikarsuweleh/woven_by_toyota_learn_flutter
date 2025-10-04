import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const TitleText({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.start,
    this.color = Colors.indigo,
    this.fontSize = 24,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: fontWeight,
          color: color,
        ),
    );
  }
}