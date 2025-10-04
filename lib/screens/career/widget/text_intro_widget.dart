
import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';

class TextIntroWidget extends StatelessWidget {
  final PurpleFields? fields;

  const TextIntroWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (fields?.eyebrow != null)
            Text(
              fields!.eyebrow!.toUpperCase(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.redAccent),
            ),
          if (fields?.header != null) ...[
            const SizedBox(height: 4),
            Text(
              fields!.header!,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
            ),
          ],
          if (fields?.description != null) ...[
            const SizedBox(height: 8),
            Text(
              fields!.description!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ],
      ),
    );
  }
}
