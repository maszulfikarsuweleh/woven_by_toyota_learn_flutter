import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/container/accordion_widget.dart';
import 'package:woven_by_toyota/components/container/glass_view_accordion_widget.dart';
import 'package:woven_by_toyota/components/image/text_over_image.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/model/career/job_posting_model.dart';
import 'package:woven_by_toyota/screens/career/widget/career_form_widget.dart';
import 'package:woven_by_toyota/screens/career/widget/section_block_widget.dart';
import 'package:woven_by_toyota/screens/career/widget/text_intro_widget.dart';

class AnimatedInnerBlockWidget extends StatefulWidget {
  final PurpleInnerBlock block;
  final List<JobPosting>? jobPostings;
  final ValueChanged<String> onSearch;
  final ValueChanged<bool> onFilterToggle;

  const AnimatedInnerBlockWidget({
    super.key,
    required this.block,
    required this.jobPostings,
    required this.onSearch,
    required this.onFilterToggle,
  });

  @override
  State<AnimatedInnerBlockWidget> createState() => _AnimatedInnerBlockWidgetState();
}

class _AnimatedInnerBlockWidgetState extends State<AnimatedInnerBlockWidget> {
  @override
  Widget build(BuildContext context) {
    final fields = widget.block.fields;

    if (fields == null) return const SizedBox.shrink();

    Widget child;
    switch (widget.block.contentType) {
      case "hero":
        child = TextOverImage(
          url: "https:${fields.image?.fields?.file?.url}",
          textContent: fields.title ?? "",
        );
      case "textIntro":
        child = TextIntroWidget(
          eyebrow: fields.eyebrow,
          header: fields.header,
          description: fields.description,
        );
        case "careersList":
        child = Column(
          children: [
            CareerFormWidget(fields: fields, onSearch: (term) {
              widget.onSearch(term);
            }, onFilterToggle: (isActive) {
              widget.onFilterToggle(isActive);
            },),
            GlassAccordionWidget(accordionData: widget.jobPostings?.map((job) => AccordionDataItem(header: job.title, subheader: "\n${job.jobItems.length} openings", content: job.jobItems.map((item) => item.text).toList())).toList() ?? [])
          ],
        );
      case "section":
        child = SectionBlockWidget(fields: fields.innerBlocks ?? []);
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