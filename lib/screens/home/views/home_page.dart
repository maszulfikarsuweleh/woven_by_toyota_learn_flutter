import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woven_by_toyota/data/home/model/home_response.dart';
import 'package:woven_by_toyota/presentation/home/viewmodel/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Scaffold(
      body: Center(
        child: viewModel.isLoading
                      ? const CircularProgressIndicator()
                      : viewModel.homeResponse != null
                          ? Text("Welcome, ${viewModel.homeResponse!.pageProps.data.fields.pageTitle}")
                          : const Text("No data available"),
      ),
    );
  }
}

// ignore: unused_element
class _InnerBlockComponent extends StatelessWidget {
  const _InnerBlockComponent({
    super.key,
    required this.pair,
  });

  final InnerBlock innerBlock;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}