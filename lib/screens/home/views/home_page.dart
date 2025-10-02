import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/components/video_player/video_player.dart';
import 'package:woven_by_toyota/data/home/model/home_response.dart' hide Image, Card;
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeViewModel>(context, listen: false).loadHomeData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final innerBlocks = viewModel.homeResponse?.pageProps.data.fields.innerBlocks;
    final joinOurTeam = viewModel.homeResponse?.pageProps.data.fields.joinOurTeam;
    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (innerBlocks == null || innerBlocks.isEmpty) {
      return const Center(child: Text("No items to display."));
    }

    return SingleChildScrollView(
        child: Column(
        children: [ 
           // The ListView section.
            ListView.builder(
              // The essential properties to prevent conflicts.
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: innerBlocks.length, // A manageable number of items.
              itemBuilder: (context, index) => _AnimatedInnerBlockWidget(block: innerBlocks[index]),
            ),
            joinOurTeam != null ? _JoinOurTeamBlockWidget(fields: joinOurTeam) : const SizedBox.shrink(),
        ])
    );
  }
}

class _AnimatedInnerBlockWidget extends StatelessWidget {
  final InnerBlock block;

  const _AnimatedInnerBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final fields = block.fields;

    if (fields == null) return const SizedBox.shrink();

    Widget child;
    print(  "Rendering block of type: ${block.contentType}" );
    switch (block.contentType) {
      case "hero":
        child = VideoPlayerScreen(videoUrl: "https:${fields.video?.fields?.file?.url}");
      case "textIntro":
        child = _TextIntroWidget(fields: fields);
      case "section":
        child = _SectionBlockWidget(fields: fields);
      case "cardGrid":
        child = _CardBlockWidget(fields: fields);
      case "featuredArticles":
        child = _NewsBlockWidget(fields: fields);
      default:
        child = const SizedBox.shrink();
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0),
        child: child,
      ),
    );
  }
}

class _JoinOurTeamBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const _JoinOurTeamBlockWidget({super.key, required this.fields});

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

class _NewsBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const _NewsBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    if (fields.newsPosts == null || fields.newsPosts!.isEmpty) return const SizedBox.shrink();
    final titleStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
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

class _TextIntroWidget extends StatelessWidget {
  final FieldResponse fields;

  const _TextIntroWidget({super.key, required this.fields});

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

class _CardBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const _CardBlockWidget({super.key, required this.fields});

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

class _SectionBlockWidget extends StatelessWidget {
  final FieldResponse fields;

  const _SectionBlockWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.indigo[700],
        );
    final subtitleStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.redAccent);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (fields.eyebrowText != null) Text(fields.eyebrowText!, style: subtitleStyle),
          if (fields.displayTitle != null) ...[
            const SizedBox(height: 4),
            Text(fields.displayTitle!, style: titleStyle),
          ],
          if (fields.innerBlocks != null && fields.innerBlocks!.isNotEmpty)
            ...fields.innerBlocks!.map((block) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: _AnimatedInnerBlockWidget(block: block),
                )),
        ],
      ),
    );
  }
}