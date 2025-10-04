import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/image/text_over_image.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart' hide Card, Image;

class ImageHeroWidget extends StatelessWidget {
  final PurpleFields? fields;

  const ImageHeroWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields == null || fields!.image?.fields?.file?.url == null) return const SizedBox.shrink();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                      TextOverImage(image: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          "https:${fields?.image?.fields?.file?.url}",
                          fit: BoxFit.cover,
                        ),
                      ), textContent: fields!.title ?? "",),
                  ],
                ),
              )
        ]       
    );
  }
 }
