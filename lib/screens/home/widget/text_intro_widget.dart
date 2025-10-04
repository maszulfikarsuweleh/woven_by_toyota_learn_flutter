import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart';

class TextIntroWidget extends StatelessWidget {
  final FieldResponse fields;

  const TextIntroWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Colors.blueGrey[700],
          fontSize: 16,
        );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(fields.description ?? "", style: style, textAlign: TextAlign.center),
    );
  }
}
