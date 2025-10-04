import 'package:flutter/material.dart';

class EyebrowText extends StatelessWidget {
  final String text;
  final Color? color;

  const EyebrowText({
    Key? key,
    required this.text,
    this.color = Colors.redAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: color),
    );
  }
}