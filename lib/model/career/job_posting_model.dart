class JobPosting {
  final String title;
  final List<JobItem> jobItems;
  final int positions; // Key we will use for grouping

  JobPosting({
    required this.title,
    required this.jobItems,
    required this.positions,
  });

  @override
  String toString() {
    return '[$positions] $title';
  }
}

class JobItem {
  final String id;
  final String text;

  JobItem({
    this.id = "",
    required this.text,
  });
}