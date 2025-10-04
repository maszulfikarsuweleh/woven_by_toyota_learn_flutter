import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';
import 'package:woven_by_toyota/screens/home/widget/animated_inner_block_widget.dart';
import 'package:woven_by_toyota/screens/home/widget/join_our_team_inner_block_widget.dart';

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
              itemBuilder: (context, index) => AnimatedInnerBlockWidget(block: innerBlocks[index]),
            ),
            joinOurTeam != null ? JoinOurTeamBlockWidget(fields: joinOurTeam) : const SizedBox.shrink(),
        ])
    );
  }
}
