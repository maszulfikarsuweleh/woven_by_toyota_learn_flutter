import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/components/video_player/video_player.dart';
import 'package:woven_by_toyota/data/home/model/home_response.dart' hide Image;
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
    var isLoading = viewModel.isLoading;
    var innerBlocks = viewModel.homeResponse?.pageProps.data.fields.innerBlocks;
    // 1. Check if the list is null (loading state)
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    // 2. Check if the list is empty
    if (innerBlocks == null || innerBlocks.isEmpty) {
      return const Center(child: Text("No items to display."));
    }
    return ListView.builder(
        itemCount: innerBlocks.length,
        itemBuilder: (context, index) {
          return _InnerBlockWidget(block: innerBlocks[index]);
        },
      );
  }
}

class _InnerBlockWidget extends StatelessWidget {
  final InnerBlock block;

  const _InnerBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final fields = block.fields;

    if (fields != null) {
        if (block.contentType == "hero") {
          var url = "https:${fields.video?.fields?.file?.url}";
          return VideoPlayerScreen(videoUrl: url);
        } else if (block.contentType == "textIntro") {
          return _TextIntroWidget(fields: fields);
        } else if (block.contentType == "section") {
          // return _CardBlockWidget(fields: fields);
          return _SectionBlockWidget(fields: fields);
        } else if (block.contentType == "cardGrid") {
          return _CardBlockWidget(fields: fields);
        } else {
          return const SizedBox.shrink();
        }
    }

    // fallback for unknown block type
    return const SizedBox.shrink();
  }
}

// ignore: unused_element
class _InnerBlockComponent extends StatelessWidget {
  const _InnerBlockComponent({
    super.key,
    required this.innerBlock,
  });

  final List<InnerBlock> innerBlock;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return ListView.builder(
      itemCount: innerBlock.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("$index"),
        );
      },
    );
  }
}

class _TextIntroWidget extends StatelessWidget {
  const _TextIntroWidget({
    super.key,
    required this.fields,
  });

  final FieldResponse fields;

  @override
  Widget build(BuildContext context) {
 final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Colors.blueGrey,
      fontSize: 14,
    );
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Text(fields.description ?? "", style: style,
            semanticsLabel: fields.title
            ),
   );
  }
}

class _CardBlockWidget extends StatelessWidget {
  const _CardBlockWidget({
    super.key,
    required this.fields,
  });

  final FieldResponse fields;

  @override
  Widget build(BuildContext context) {
    if (fields.cards == null || fields.cards!.isEmpty) {
      return Center(child: Text("No cards to display."));
    } else { 
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: fields.cards!.map((card) {
          return _ImageDescriptionWidget(fields: card.fields!);
        }).toList(),
      );
    }
  }
}

class _ImageDescriptionWidget extends StatelessWidget {
  const _ImageDescriptionWidget({
    super.key,
    required this.fields,
  });

  final FieldResponse fields;

  @override
  Widget build(BuildContext context) {
 final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Colors.brown,
      fontSize: 16,
    );
   return Column(
    children: [
      if (fields.image != null) 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network("https:${fields.image?.fields?.file?.url}"),
        ),
        if (fields.title != null)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fields.title!, style: style,
            semanticsLabel: fields.title,
          ),
        ),
      if (fields.text != null)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fields.text!, style: style,
            semanticsLabel: fields.text,
          ),
        ),
    ],
   );
  }
}

class _SectionBlockWidget extends StatelessWidget {
  const _SectionBlockWidget({
    super.key,
    required this.fields,
  });

  final FieldResponse fields;

  @override
  Widget build(BuildContext context) {
 final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Colors.indigo,
      fontSize: 16,
    );
   return Column(
    children: [
      if (fields.eyebrowText != null) 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fields.eyebrowText!, style: style,
            semanticsLabel: fields.eyebrowText,
          ),
        ),
        if (fields.displayTitle != null)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(fields.displayTitle!, style: style.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            semanticsLabel: fields.displayTitle,
          ),
        ),
        if (fields.innerBlocks != null && fields.innerBlocks!.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: fields.innerBlocks!.length,
            itemBuilder: (context, index) {
              return _InnerBlockWidget(block: fields.innerBlocks![index]);
            },
          ),
    ],
   );
  }
}