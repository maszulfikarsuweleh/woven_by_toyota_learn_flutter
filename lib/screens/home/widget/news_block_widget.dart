import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart' hide Card, Image;

class NewsBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const NewsBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields.newsPosts == null || fields.newsPosts!.isEmpty) return const SizedBox.shrink();
    final titleStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
      fontWeight: FontWeight.bold,
          color: Colors.indigo[700],
        );

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
            child: Text(fields.heading ?? "", style: titleStyle),
          ),
          Wrap(
          spacing: 16,
          runSpacing: 16,
          children: fields.newsPosts!.map((news) {
            final newsFields = news.fields;
            if (newsFields == null) return const SizedBox.shrink();
      
            return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (newsFields.thumbnail != null)
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          "https:${newsFields.thumbnail?.fields?.file?.url ?? ""}",
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            newsFields.category ?? "",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.redAccent,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            newsFields.pageTitle ?? "",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.blueGrey[700],
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
          }).toList(),
        )
        ]       
      ),
    );
  }
}
