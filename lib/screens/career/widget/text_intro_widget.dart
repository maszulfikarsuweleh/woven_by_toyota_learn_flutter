
import 'package:flutter/material.dart';

class TextIntroWidget extends StatelessWidget {
  final String? eyebrow;
  final String? header;
  final String? description;

  const TextIntroWidget({super.key, required this.eyebrow, required this.header, required this.description});

  @override
  Widget build(BuildContext context) {
    if (eyebrow == null && header == null && description == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (eyebrow != null)
            Text(
              eyebrow!.toUpperCase(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.redAccent),
            ),
          if (header != null) ...[
            const SizedBox(height: 4),
            Text(
              header!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
            ),
          ],
          if (description != null) ...[
            const SizedBox(height: 8),
            Text(
              description!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ],
      ),
    );
  }
}
