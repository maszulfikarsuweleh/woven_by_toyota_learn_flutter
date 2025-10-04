import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/video_player/video_player.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart';
import 'package:woven_by_toyota/screens/home/widget/card_block_widget.dart';
import 'package:woven_by_toyota/screens/home/widget/news_block_widget.dart';
import 'package:woven_by_toyota/screens/home/widget/section_block_widget.dart';
import 'package:woven_by_toyota/screens/home/widget/text_intro_widget.dart';

class AnimatedInnerBlockWidget extends StatelessWidget {
  final InnerBlock block;

  const AnimatedInnerBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final fields = block.fields;

    if (fields == null) return const SizedBox.shrink();

    Widget child;
    switch (block.contentType) {
      case "hero":
        child = VideoPlayerScreen(videoUrl: "https:${fields.video?.fields?.file?.url}");
      case "textIntro":
        child = TextIntroWidget(fields: fields);
      case "section":
        child = SectionBlockWidget(fields: fields);
      case "cardGrid":
        child = CardBlockWidget(fields: fields);
      case "featuredArticles":
        child = NewsBlockWidget(fields: fields);
      default:
        child = const SizedBox.shrink();
    }

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
