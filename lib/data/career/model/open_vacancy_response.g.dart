// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_vacancy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenVacancyItemResponse _$OpenVacancyItemResponseFromJson(
  Map<String, dynamic> json,
) => OpenVacancyItemResponse(
  additionalPlain: json['additionalPlain'] as String?,
  additional: json['additional'] as String?,
  categories: json['categories'] == null
      ? null
      : Categories.fromJson(json['categories'] as Map<String, dynamic>),
  createdAt: (json['createdAt'] as num?)?.toInt(),
  descriptionPlain: json['descriptionPlain'] as String?,
  description: json['description'] as String?,
  id: json['id'] as String?,
  lists: (json['lists'] as List<dynamic>?)
      ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  text: json['text'] as String?,
  country: json['country'] as String?,
  workplaceType: json['workplaceType'] as String?,
  opening: json['opening'] as String?,
  openingPlain: json['openingPlain'] as String?,
  descriptionBody: json['descriptionBody'] as String?,
  descriptionBodyPlain: json['descriptionBodyPlain'] as String?,
  hostedUrl: json['hostedUrl'] as String?,
  applyUrl: json['applyUrl'] as String?,
);

Map<String, dynamic> _$OpenVacancyItemResponseToJson(
  OpenVacancyItemResponse instance,
) => <String, dynamic>{
  'additionalPlain': instance.additionalPlain,
  'additional': instance.additional,
  'categories': instance.categories,
  'createdAt': instance.createdAt,
  'descriptionPlain': instance.descriptionPlain,
  'description': instance.description,
  'id': instance.id,
  'lists': instance.lists,
  'text': instance.text,
  'country': instance.country,
  'workplaceType': instance.workplaceType,
  'opening': instance.opening,
  'openingPlain': instance.openingPlain,
  'descriptionBody': instance.descriptionBody,
  'descriptionBodyPlain': instance.descriptionBodyPlain,
  'hostedUrl': instance.hostedUrl,
  'applyUrl': instance.applyUrl,
};

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
  commitment: json['commitment'] as String?,
  department: json['department'] as String?,
  location: json['location'] as String?,
  team: json['team'] as String?,
  allLocations: (json['allLocations'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'commitment': instance.commitment,
      'department': instance.department,
      'location': instance.location,
      'team': instance.team,
      'allLocations': instance.allLocations,
    };

ListElement _$ListElementFromJson(Map<String, dynamic> json) => ListElement(
  text: json['text'] as String?,
  content: json['content'] as String?,
);

Map<String, dynamic> _$ListElementToJson(ListElement instance) =>
    <String, dynamic>{'text': instance.text, 'content': instance.content};
