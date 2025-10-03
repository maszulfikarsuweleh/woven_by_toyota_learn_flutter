import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';
import 'package:woven_by_toyota/presentation/career/viewmodel/career_viewmodel.dart';

class CareerPage extends StatefulWidget {
  const CareerPage({super.key});

  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {

late CareerViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Provider.of<CareerViewModel>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _viewModel.loadCareerData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CareerViewModel>();
    final innerBlocks = viewModel.careerResponse?.pageProps?.data?.fields?.innerBlocks;

    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (innerBlocks == null || innerBlocks.isEmpty) {
      return const Center(child: Text("No items to display."));
    }

      // return const Center(child: Text("items to display."));

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
        ])
    );
  }
}
class _AnimatedInnerBlockWidget extends StatelessWidget {
  final PurpleInnerBlock block;

  const _AnimatedInnerBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final fields = block.fields;

    if (fields == null) return const SizedBox.shrink();

    Widget child;
    switch (block.contentType) {
      case "hero":
        child = VideoPlayerScreen(videoUrl: "https:${fields.video?.fields?.file?.url}");
      // case "textIntro":
      //   child = _TextIntroWidget(fields: fields);
      // case "section":
      //   child = _SectionBlockWidget(fields: fields);
      // case "cardGrid":
      //   child = _CardBlockWidget(fields: fields);
      // case "featuredArticles":
      //   child = _NewsBlockWidget(fields: fields);
      default:
        child = const SizedBox.shrink();
    }

    // Widget child = const SizedBox.shrink();

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
