import 'package:woven_by_toyota/data/career/repository/career_repository.dart';
import 'package:woven_by_toyota/model/career/job_posting_model.dart';

class GetGetGroupCareerPositionUseCase {
  final CareerRepository repository;
  GetGetGroupCareerPositionUseCase({required this.repository});

  Future<List<JobPosting>> execute() async {
    // Implementation goes here
    final List<JobPosting> result = [];
    final careers = await repository.getJobListings();
    // Grouping logic based on the number of positions
    final Map<String, List<JobItem>> grouped = {};
    for (var career in careers) {
      if (career.categories?.department != null && !grouped.containsKey(career.categories!.department)) {
        grouped[career.categories!.department!] = [];
      }
      if(career.country != null) {
        final text = "${career.text}\n${career.categories!.allLocations?.join(", ") ?? ""} - ${career.categories!.department ?? ""} - ${career.categories!.team ?? ""}";
        grouped[career.categories!.department!]!.add(JobItem(text: text));
      }
    }

    // Convert the grouped map into a list of JobPosting
    grouped.forEach((department, items) {
      result.add(JobPosting(title: department, jobItems: items, positions: items.length));
    });

    return result.where((job) => job.positions > 0).toList();
  }
}