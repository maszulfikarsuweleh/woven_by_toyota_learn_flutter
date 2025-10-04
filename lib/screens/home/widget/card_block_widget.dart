
import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart' hide Card, Image;

class CardBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const CardBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields.cards == null || fields.cards!.isEmpty) return const SizedBox.shrink();

    return Wrap(
        spacing: 16,
        runSpacing: 16,
        children: fields.cards!.map((card) {
          final cardFields = card.fields;
          if (cardFields == null) return const SizedBox.shrink();

          return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (cardFields.image != null)
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Image.network(
                        "https:${cardFields.image?.fields?.file?.url}",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      cardFields.text ?? "",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.blueGrey[700],
                          fontSize: 16,
                        ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
        }).toList(),
      );
  }
}
