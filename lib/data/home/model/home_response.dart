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

  @JsonKey(fromJson:FieldResponse.fromJson, toJson: null)
  final FieldResponse? fields;

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

@JsonSerializable()
class FieldResponse {
    FieldResponse({
        required this.displayName,
        required this.title,
        required this.description,
        required this.file,
        required this.theme,
        required this.id,
        required this.locale,
        required this.layout,
        required this.colorBackground,
        required this.displayTitle,
        required this.displayTitleWidth,
        required this.eyebrowText,
        required this.text,
        required this.linkText,
        required this.linkUrl,
        required this.jumpToLink,
        required this.ariaLabel,
        required this.pageTitle,
        required this.publishDate,
        required this.category,
        required this.topic,
        required this.video,
        required this.cards,
        required this.image,
        required this.innerBlocks,
        required this.cta,
        required this.cardType,
    });

    final String? displayName;
    final String? title;
    final String? description;
    final FileClass? file;
    final String? theme;
    final String? id;
    final String? locale;
    final String? layout;
    final List<String>? colorBackground;
    final String? displayTitle;
    final String? displayTitleWidth;
    final String? eyebrowText;
    final String? text;
    final String? linkText;
    final String? linkUrl;
    final bool? jumpToLink;
    final String? ariaLabel;
    final String? pageTitle;
    final String? publishDate;
    final String? category;
    final List<String>? topic;
    final Video? video;
    final List<Card>? cards;
    final Image? image;
    final List<InnerBlock>? innerBlocks;
    final Cta? cta;
    final List<String>? cardType;

    factory FieldResponse.fromJson(Map<String, dynamic> json) => _$FieldResponseFromJson(json);

    Map<String, dynamic> toJson() => _$FieldResponseToJson(this);

}

@JsonSerializable()
class Card {
    Card({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final FieldResponse? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

    Map<String, dynamic> toJson() => _$CardToJson(this);

}
@JsonSerializable()
class Video {
  Video({
    required this.fields
  });

  final FieldResponse? fields;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

@JsonSerializable()
class FileClass {
    FileClass({
        required this.url,
        required this.details,
        required this.fileName,
        required this.contentType,
    });

    final String? url;
    final Details? details;
    final String? fileName;
    final String? contentType;

    factory FileClass.fromJson(Map<String, dynamic> json) => _$FileClassFromJson(json);

    Map<String, dynamic> toJson() => _$FileClassToJson(this);
}

@JsonSerializable()
class Details {
    Details({
        required this.size,
        required this.image,
    });

    final int? size;
    final Image? image;

    factory Details.fromJson(Map<String, dynamic> json) => _$DetailsFromJson(json);

    Map<String, dynamic> toJson() => _$DetailsToJson(this);

}

@JsonSerializable()
class Image {
    Image({
        required this.width,
        required this.height,
        required this.fields,
    });

    final int? width;
    final int? height;
    final FieldResponse? fields;

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);

}

@JsonSerializable()
class Cta {
    Cta({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final CtaFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory Cta.fromJson(Map<String, dynamic> json) => _$CtaFromJson(json);

    Map<String, dynamic> toJson() => _$CtaToJson(this);

}

@JsonSerializable()
class CtaFields {
    CtaFields({
        required this.linkText,
        required this.linkUrl,
        required this.jumpToLink,
        required this.ariaLabel,
    });

    final String? linkText;
    final String? linkUrl;
    final bool? jumpToLink;
    final String? ariaLabel;

    factory CtaFields.fromJson(Map<String, dynamic> json) => _$CtaFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$CtaFieldsToJson(this);

}

@JsonSerializable()
class FieldsImage {
    FieldsImage({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final ImageFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory FieldsImage.fromJson(Map<String, dynamic> json) => _$FieldsImageFromJson(json);

    Map<String, dynamic> toJson() => _$FieldsImageToJson(this);

}

@JsonSerializable()
class ImageFields {
    ImageFields({
        required this.title,
        required this.description,
        required this.file,
    });

    final String? title;
    final String? description;
    final FileClass? file;

    factory ImageFields.fromJson(Map<String, dynamic> json) => _$ImageFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$ImageFieldsToJson(this);

}
@JsonSerializable()
class DetailsImage {
    DetailsImage({
        required this.width,
        required this.height,
    });

    final int? width;
    final int? height;

    factory DetailsImage.fromJson(Map<String, dynamic> json) => _$DetailsImageFromJson(json);

    Map<String, dynamic> toJson() => _$DetailsImageToJson(this);

}