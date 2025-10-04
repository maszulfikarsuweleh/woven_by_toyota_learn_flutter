// A reusable widget that wraps the ExpansionTile with custom styling
import 'package:flutter/material.dart';
class AccordionWidget extends StatelessWidget {
  final List<AccordionDataItem> accordionData;
  const AccordionWidget({super.key, required this.accordionData});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        // Use a Column to hold content, or ListView for a scrollable list
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              // Iterate through the data to build the accordion tiles
              ...accordionData.map((item) {
                return _AccordionTile(
                  content: item,
                );
              }),
            ],
          ),
      ),
    );
  }
}

class AccordionDataItem {
  final String header;
  final List<String> content;

  AccordionDataItem({required this.header, required this.content});
}

class _AccordionTile extends StatelessWidget {
  final AccordionDataItem content;
  const _AccordionTile({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        // The Theme is used here to override the default color of the icon
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          // Styling the header
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          
          title: Text(
            content.header,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple,
            ),
          ),

          // Customizing the trailing icon
          trailing: const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.deepPurpleAccent,
          ),

          // The content that expands/collapses
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content.content
                    .map((text) => _AccordionContentItem(content: text))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AccordionContentItem extends StatelessWidget {
  final String content;
  const _AccordionContentItem({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[100],
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:     Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        content,
        style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
      ),
      ),
    )
    );
  }
}