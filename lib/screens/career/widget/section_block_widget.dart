import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/screens/career/widget/dynamic_tab_widget.dart';
import 'package:woven_by_toyota/screens/career/widget/text_intro_widget.dart';

class SectionBlockWidget extends StatelessWidget {
  final List<FluffyInnerBlock> fields;

  const SectionBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: fields.map((block) {
      switch (block.contentType) {
        case "textIntro":
          return TextIntroWidget(
            eyebrow: block.fields?.eyebrow,
            header: block.fields?.header,
            description: block.fields?.description,
          );
        case "tabGroup":
          if (block.fields?.innerBlocks == null || block.fields!.innerBlocks!.isEmpty) {
            return const SizedBox.shrink();
          } else {
            return DynamicTabWidget(ourCultureTab: block.fields!.innerBlocks!);
          }
        case "blogPostSection":
          return TextIntroWidget(
            eyebrow: block.fields?.eyebrowText ?? '',
            header: block.fields?.displayName ?? '',
            description: block.fields?.description ?? '',
          );
        default:
          return const SizedBox.shrink();
      }
    }).toList(),
);
  }
}