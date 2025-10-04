import 'package:flutter/material.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart' hide Card, Image;

class JoinOurTeamBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const JoinOurTeamBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields.fields == null) return const SizedBox.shrink();
    final titleStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Colors.indigo[700],
        );
    final subtitleStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.redAccent);

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 16.0),
            child: Text(fields.fields!.sectionTitle ?? "", style: subtitleStyle),
          ),
           Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (fields.fields?.backgroundImage?.fields?.file?.url != null) ...[
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          "https:${fields.fields?.backgroundImage?.fields?.file?.url ?? ""}",
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fields.fields!.titleText?? "",
                        style: titleStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fields.fields!.description?? "",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.blueGrey[700],
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
          ]),
    );
  }
  }
