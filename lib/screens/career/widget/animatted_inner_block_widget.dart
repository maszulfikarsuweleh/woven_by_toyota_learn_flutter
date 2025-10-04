import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/screens/career/widget/image_hero_widget.dart';
import 'package:woven_by_toyota/screens/career/widget/text_intro_widget.dart';

class AnimatedInnerBlockWidget extends StatelessWidget {
  final PurpleInnerBlock block;

  const AnimatedInnerBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final fields = block.fields;

    if (fields == null) return const SizedBox.shrink();

    Widget child;
    switch (block.contentType) {
      case "hero":
        child = ImageHeroWidget(fields:fields);
      case "textIntro":
        child = TextIntroWidget(fields: fields);
      // case "section":
      //   child = SectionBlockWidget(fields: fields);
      // case "cardGrid":
      //   child = _CardBlockWidget(fields: fields);
      // case "featuredArticles":
      //   child = _NewsBlockWidget(fields: fields);
      default:
        child = const SizedBox.shrink();
    }

    // Widget child = const SizedBox.shrink();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: child,
      ),
    );
  }
}