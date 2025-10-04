import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/text/eyebrow_text.dart';
import 'package:woven_by_toyota/components/text/title_text.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart';
import 'package:woven_by_toyota/screens/home/widget/animated_inner_block_widget.dart';

class SectionBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const SectionBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (fields.eyebrowText != null) 
            EyebrowText(text: fields.eyebrowText!),
          if (fields.displayTitle != null) ...[
            const SizedBox(height: 4),
            TitleText(text: fields.displayTitle!),
          ],
          if (fields.innerBlocks != null && fields.innerBlocks!.isNotEmpty)
            ...fields.innerBlocks!.map((block) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: AnimatedInnerBlockWidget(block: block),
                )),
        ],
      ),
    );
  }
}