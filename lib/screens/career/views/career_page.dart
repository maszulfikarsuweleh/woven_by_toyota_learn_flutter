import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/components/container/accordion_widget.dart';
import 'package:woven_by_toyota/components/container/glass_view_accordion_widget.dart';
import 'package:woven_by_toyota/components/image/text_over_image.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart' hide Image, Card;
import 'package:woven_by_toyota/data/career/model/open_vacancy_response.dart';
import 'package:woven_by_toyota/data/common/model/common_response.dart' hide Card, Image;
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
      _viewModel.loadJobListings();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CareerViewModel>();
    final innerBlocks = viewModel.careerResponse?.pageProps?.data?.fields?.innerBlocks;
    final jobListings = viewModel.openVacancyResponse;

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
            GlassAccordionWidget(accordionData: jobListings?.map((job) => AccordionDataItem(header: job.title, content: job.jobItems.map((item) => item.text).toList())).toList() ?? [
        ])
    ]));
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
        child = _ImageHeroWidget(fields:fields);
      case "textIntro":
        child = _TextIntroWidget(fields: fields);
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
class _AnimatedJobVacancyWidget extends StatelessWidget {
  final OpenVacancyItemResponse? jobItem;

  const _AnimatedJobVacancyWidget({super.key, required this.jobItem});

  @override
  Widget build(BuildContext context) {

    if (jobItem == null) return const SizedBox.shrink();

    Widget child = const SizedBox.shrink();

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

class _TextIntroWidget extends StatelessWidget {
  final PurpleFields? fields;

  const _TextIntroWidget({super.key, required this.fields});

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

class _ImageHeroWidget extends StatelessWidget {
  final PurpleFields? fields;

  const _ImageHeroWidget({super.key, required this.fields});

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
 