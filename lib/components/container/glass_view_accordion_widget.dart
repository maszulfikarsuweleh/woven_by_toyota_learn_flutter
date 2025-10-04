// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/container/accordion_widget.dart';

class GlassAccordionWidget extends StatelessWidget {
  final List<AccordionDataItem> accordionData;
  const GlassAccordionWidget({super.key, required this.accordionData});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            // Iterate through the data to build the accordion tiles
            ...accordionData.map((item) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: _GlassAccordionTile(
                  content: item,
                ),
              );
            }),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// --- The Glassmorphism Accordion Tile (Header) ---
class _GlassAccordionTile extends StatelessWidget {
  final AccordionDataItem content;
  const _GlassAccordionTile({
    super.key,
    required this.content,
  });

  // Common BoxDecoration for the glass effect
  BoxDecoration _glassDecoration({bool isExpanded = false}) {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.15), // Semi-transparent white
      borderRadius: BorderRadius.circular(isExpanded ? 16 : 20),
      border: Border.all(
        color: Colors.white.withOpacity(0.3), // Subtle white border
        width: 1.5,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.brown.withOpacity(0.2),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // 1. Use ClipRRect for rounded corners on the blur area
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      
      // 2. BackdropFilter is the core of the blur/glass effect
      child: BackdropFilter(
        // Blur intensity
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          // 3. Apply the semi-transparent box decoration
          decoration: _glassDecoration(),
          
          // 4. Use Theme to hide the default ExpansionTile divider
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              // Styling the header
              tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              
              title: Text(
                content.header,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo, // White text for dark background
                ),
              ),

              // Customizing the trailing icon
              trailing: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.indigo,
              ),

              // The content that expands/collapses
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: content.content
                        .map((text) => _GlassAccordionContentItem(content: text))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// --- The Nested Glassmorphism Content Item ---
class _GlassAccordionContentItem extends StatelessWidget {
  final String content;
  const _GlassAccordionContentItem({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    // We use a lighter, less blurred glass effect for the nested item
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        // Subtle blur
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1), // Even more transparent
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.0,
            ),
          ),
          child: Text(
            content,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black.withOpacity(0.85),
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}