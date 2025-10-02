import 'package:json_annotation/json_annotation.dart';

part 'home_response.g.dart';

@JsonSerializable(explicitToJson: true)
class HomeResponse {
  final PageProps pageProps;

  @JsonKey(defaultValue: "")
  final String contentType;

  @JsonKey(defaultValue: "")
  final String id;

  @JsonKey(defaultValue: "")
  final String locale;

  HomeResponse({
    required this.pageProps,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageProps {
  final Head head;
  final Data data;

  @JsonKey(defaultValue: "")
  final String contentType;

  @JsonKey(defaultValue: "")
  final String id;

  @JsonKey(defaultValue: "")
  final String locale;

  PageProps({
    required this.head,
    required this.data,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory PageProps.fromJson(Map<String, dynamic> json) =>
      _$PagePropsFromJson(json);

  Map<String, dynamic> toJson() => _$PagePropsToJson(this);
}

@JsonSerializable()
class Head {
  @JsonKey(defaultValue: "")
  final String title;

  @JsonKey(defaultValue: "")
  final String description;

  @JsonKey(defaultValue: [])
  final List<String> keywords;

  @JsonKey(defaultValue: "")
  final String siteName;

  @JsonKey(defaultValue: "")
  final String image;

  Head({
    required this.title,
    required this.description,
    required this.keywords,
    required this.siteName,
    required this.image,
  });

  factory Head.fromJson(Map<String, dynamic> json) => _$HeadFromJson(json);

  Map<String, dynamic> toJson() => _$HeadToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data {
  final DataFields fields;

  @JsonKey(defaultValue: "")
  final String contentType;

  @JsonKey(defaultValue: "")
  final String id;

  @JsonKey(defaultValue: "")
  final String locale;

  Data({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataFields {
  @JsonKey(defaultValue: "")
  final String pageTitle;

  @JsonKey(defaultValue: "")
  final String slug;

  @JsonKey(defaultValue: [])
  final List<InnerBlock> innerBlocks;

  DataFields({
    required this.pageTitle,
    required this.slug,
    required this.innerBlocks,
  });

  factory DataFields.fromJson(Map<String, dynamic> json) =>
      _$DataFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$DataFieldsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class InnerBlock {
  @JsonKey(fromJson: _fromFieldsJson, toJson: _toFieldsJson)
  final Object? fields;

  @JsonKey(defaultValue: "")
  final String contentType;

  @JsonKey(defaultValue: "")
  final String id;

  @JsonKey(defaultValue: "")
  final String locale;

  InnerBlock({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory InnerBlock.fromJson(Map<String, dynamic> json) =>
      _$InnerBlockFromJson(json);

  Map<String, dynamic> toJson() => _$InnerBlockToJson(this);

  /// Polymorphic decode
  static Object? _fromFieldsJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    final type = json['contentType'] ?? '';

    switch (type) {
      case 'videoBlock':
        return VideoBlockFields.fromJson(json);
      case 'layoutBlock':
        return LayoutBlockFields.fromJson(json);
      case 'sectionBlock':
        return SectionBlockFields.fromJson(json);
      default:
        return json; // fallback raw Map
    }
  }

  static Map<String, dynamic>? _toFieldsJson(Object? object) {
    if (object == null) return null;
    if (object is VideoBlockFields) return object.toJson();
    if (object is LayoutBlockFields) return object.toJson();
    if (object is SectionBlockFields) return object.toJson();
    return object as Map<String, dynamic>;
  }
}

@JsonSerializable()
class VideoBlockFields {
  @JsonKey(defaultValue: "")
  final String displayName;

  @JsonKey(defaultValue: "")
  final String title;

  @JsonKey(defaultValue: "")
  final String theme;

  VideoBlockFields({
    required this.displayName,
    required this.title,
    required this.theme,
  });

  factory VideoBlockFields.fromJson(Map<String, dynamic> json) =>
      _$VideoBlockFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$VideoBlockFieldsToJson(this);
}

@JsonSerializable()
class LayoutBlockFields {
  @JsonKey(defaultValue: "")
  final String layout;

  @JsonKey(defaultValue: "")
  final String description;

  @JsonKey(defaultValue: "")
  final String displayName;

  LayoutBlockFields({
    required this.layout,
    required this.description,
    required this.displayName,
  });

  factory LayoutBlockFields.fromJson(Map<String, dynamic> json) =>
      _$LayoutBlockFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$LayoutBlockFieldsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SectionBlockFields {
  @JsonKey(defaultValue: "")
  final String title;

  @JsonKey(defaultValue: [])
  final List<String> colorBackground;

  @JsonKey(defaultValue: "")
  final String displayTitle;

  @JsonKey(defaultValue: "")
  final String displayTitleWidth;

  @JsonKey(defaultValue: "")
  final String eyebrowText;

  @JsonKey(defaultValue: [])
  final List<InnerBlock> innerBlocks;

  SectionBlockFields({
    required this.title,
    required this.colorBackground,
    required this.displayTitle,
    required this.displayTitleWidth,
    required this.eyebrowText,
    required this.innerBlocks,
  });

  factory SectionBlockFields.fromJson(Map<String, dynamic> json) =>
      _$SectionBlockFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$SectionBlockFieldsToJson(this);
}
