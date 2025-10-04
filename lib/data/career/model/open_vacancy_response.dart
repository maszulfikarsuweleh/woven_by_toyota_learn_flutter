import 'package:json_annotation/json_annotation.dart';

part 'open_vacancy_response.g.dart';

@JsonSerializable()
class OpenVacancyItemResponse {
    OpenVacancyItemResponse({
        required this.additionalPlain,
        required this.additional,
        required this.categories,
        required this.createdAt,
        required this.descriptionPlain,
        required this.description,
        required this.id,
        required this.lists,
        required this.text,
        required this.country,
        required this.workplaceType,
        required this.opening,
        required this.openingPlain,
        required this.descriptionBody,
        required this.descriptionBodyPlain,
        required this.hostedUrl,
        required this.applyUrl,
    });

    final String? additionalPlain;
    final String? additional;
    final Categories? categories;
    final int? createdAt;
    final String? descriptionPlain;
    final String? description;
    final String? id;
    final List<ListElement>? lists;
    final String? text;
    final String? country;
    final String? workplaceType;
    final String? opening;
    final String? openingPlain;
    final String? descriptionBody;
    final String? descriptionBodyPlain;
    final String? hostedUrl;
    final String? applyUrl;

    factory OpenVacancyItemResponse.fromJson(Map<String, dynamic> json) => _$OpenVacancyItemResponseFromJson(json);

    Map<String, dynamic> toJson() => _$OpenVacancyItemResponseToJson(this);

}

@JsonSerializable()
class Categories {
    Categories({
        required this.commitment,
        required this.department,
        required this.location,
        required this.team,
        required this.allLocations,
    });

    final String? commitment;
    final String? department;
    final String? location;
    final String? team;
    final List<String>? allLocations;

    factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);

    Map<String, dynamic> toJson() => _$CategoriesToJson(this);

}

@JsonSerializable()
class ListElement {
    ListElement({
        required this.text,
        required this.content,
    });

    final String? text;
    final String? content;

    factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);

    Map<String, dynamic> toJson() => _$ListElementToJson(this);

}
