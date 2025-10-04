import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/components/container/accordion_widget.dart';
import 'package:woven_by_toyota/components/container/glass_view_accordion_widget.dart';
import 'package:woven_by_toyota/presentation/career/viewmodel/career_viewmodel.dart';
import 'package:woven_by_toyota/screens/career/widget/animatted_inner_block_widget.dart';

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
              itemBuilder: (context, index) => AnimatedInnerBlockWidget(
                block: innerBlocks[index],
                jobPostings: jobListings,
                onSearch: (term) {
                  _viewModel.searchCareer(term);
                },
                onFilterToggle: (isActive) {
                  _viewModel.toggleFilter(isActive);
                },
              ),
            ),
    ]));
  }
}
 