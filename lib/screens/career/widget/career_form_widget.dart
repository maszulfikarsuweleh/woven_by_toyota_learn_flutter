import 'package:flutter/material.dart';
import 'package:woven_by_toyota/components/text/eyebrow_text.dart';
import 'package:woven_by_toyota/components/text/title_text.dart';
import 'package:woven_by_toyota/data/career/model/career_response.dart';

class CareerFormWidget extends StatefulWidget {
  final PurpleFields? fields;
  final ValueChanged<String> onSearch;
  final ValueChanged<bool> onFilterToggle;

  CareerFormWidget({
    super.key,
    required this.fields,
    required this.onSearch,
    required this.onFilterToggle,
  });

  @override
  State<CareerFormWidget> createState() => _CareerFormWidgetState();
}

class _CareerFormWidgetState extends State<CareerFormWidget> {

  void _handleSearch(String searchTerm) {
    setState(() {
      widget.onSearch(searchTerm);
    });
  }

  void _handleFilterToggle(bool newFilterState) {
    setState(() {
      widget.onFilterToggle(newFilterState);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.fields == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EyebrowText(text: widget.fields?.eyebrowText ?? ''),
          TitleText(text: widget.fields?.title ?? ''),
          const SizedBox(height: 16),
          SearchFilterWidget(
            onSearch: _handleSearch, // Passed to TextField.onChanged
            onFilterToggle: _handleFilterToggle,
          ),
        ],
      ),
    );
  }
}

class SearchFilterWidget extends StatefulWidget {
  // Define the function signatures (callbacks)
  final ValueChanged<String> onSearch;
  final ValueChanged<bool> onFilterToggle;

  const SearchFilterWidget({
    super.key, 
    required this.onSearch, 
    required this.onFilterToggle,
  });

  @override
  State<SearchFilterWidget> createState() => _SearchFilterWidgetState();
}

class _SearchFilterWidgetState extends State<SearchFilterWidget> {
  // Local state for the text field and filter button
  final TextEditingController _textController = TextEditingController();
  bool _isFilterApplied = false;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  
  // Internal function to handle the filter button press
  void _handleFilterToggle() {
    setState(() {
      _isFilterApplied = !_isFilterApplied;
    });
    // Call the parent's provided function, passing the new state
    widget.onFilterToggle(_isFilterApplied);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Edit Text (TextField)
        TextField(
          controller: _textController,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: 'Search Text',
            hintText: 'Enter keyword...',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
          // KEY CHANGE: This calls the parent's onSearch function on every keystroke.
          onChanged: widget.onSearch, 
        ),
        const SizedBox(height: 20),
        
        // Buttons (Only the Filter button remains)
        Row(
          children: [
            Expanded(
              // Filter Button
              child: OutlinedButton.icon(
                onPressed: _handleFilterToggle, // Executes internal handler which calls parent callback
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                icon: Icon(_isFilterApplied ? Icons.filter_alt_off : Icons.filter_alt),
                label: Text(_isFilterApplied ? 'Remove Filter' : 'Apply Filter'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}