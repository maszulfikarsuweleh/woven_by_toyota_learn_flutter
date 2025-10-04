import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/image/text_over_image.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';

class DynamicTabWidget extends StatefulWidget {
  final List<TentacledInnerBlock> ourCultureTab;

  const DynamicTabWidget({super.key, required this.ourCultureTab});

  @override
  State<DynamicTabWidget> createState() => _DynamicTabWidgetState();
}

class _DynamicTabWidgetState extends State<DynamicTabWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.ourCultureTab.length ?? 0, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            isScrollable: widget.ourCultureTab.length > 3,
            tabs: widget.ourCultureTab.map((tab) {
              return Tab(text: tab.fields?.tabTitle ?? "");
            }).toList(),
            onTap: (index) {
              setState(() {
                _tabController.index = index;
              });
            },
          ),
          if (widget.ourCultureTab[_tabController.index].fields?.innerBlocks?.firstOrNull?.fields?.richtext?.content != null)
            _TabContent(
              content: widget.ourCultureTab[_tabController.index].fields?.innerBlocks?.firstOrNull?.fields?.richtext?.content ?? [],
            ),
        ],
      );
  }
}

class _TabContent extends StatelessWidget {
  final List<RichtextContent> content;

  const _TabContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...content.map((item) {
          if (item.nodeType == "embedded-asset-block") {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: TextOverImage(url: "https:${item.data?.target?.fields?.file?.url ?? ""}", textContent: ""),
            );
          } else if (item.nodeType == "paragraph") {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              child: Text(
                item.content?.firstOrNull?.value ?? "",
                style: const TextStyle(fontSize: 12.0),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        }).toList(),
      ],
    );
  }
}