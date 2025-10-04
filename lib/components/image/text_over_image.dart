import 'package:flutter/material.dart';

class TextOverImage extends StatelessWidget {
  
  const TextOverImage({
    Key? key,
    required this.image,
    required this.textContent,
  }) : super(key: key);

  final Widget image;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Background image
        image,
        // Text positioned at the bottom left
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black54,
            child: Text(textContent,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}