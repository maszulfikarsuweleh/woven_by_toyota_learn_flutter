import 'package:flutter/material.dart';

class ImageHeroWidget extends StatelessWidget {
  final String? url;
  final String? text;

  const ImageHeroWidget({super.key, required this.url, this.text = ""});

  @override
  Widget build(BuildContext context) {
    if (url == null) return const SizedBox.shrink();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          "https:$url",
                        fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                      : null,
                                ),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 50), 
                        ),
                      ),
                  ],
                ),
              )
        ]       
    );
  }
 }
