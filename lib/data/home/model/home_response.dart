import 'package:json_annotation/json_annotation.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  final PageProps pageProps;

  HomeResponse({required this.pageProps});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

@JsonSerializable()
class PageProps {
  final Head head;
  final Data data;
  final String contentType;
  final String id;
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
  final String title;
  final String description;
  final List<String> keywords;
  final String siteName;
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

@JsonSerializable()
class Data {
  final Fields fields;
  final String contentType;
  final String id;
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

@JsonSerializable()
class Fields {
  final String pageTitle;
  final String slug;
  final List<InnerBlock> innerBlocks;

  Fields({
    required this.pageTitle,
    required this.slug,
    required this.innerBlocks,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
  Map<String, dynamic> toJson() => _$FieldsToJson(this);
}

@JsonSerializable()
class InnerBlock {
  final dynamic fields;
  final String contentType;
  final String id;
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
  final String displayName;
  final String title;
  final Video video;
  final String theme;

  VideoBlockFields({
    required this.displayName,
    required this.title,
    required this.video,
    required this.theme,
  });

  factory VideoBlockFields.fromJson(Map<String, dynamic> json) =>
      _$VideoBlockFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$VideoBlockFieldsToJson(this);
}

@JsonSerializable()
class Video {
  final VideoFields fields;
  final String contentType;
  final String id;
  final String locale;

  Video({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

@JsonSerializable()
class VideoFields {
  final String title;
  final String description;
  final File file;

  VideoFields({
    required this.title,
    required this.description,
    required this.file,
  });

  factory VideoFields.fromJson(Map<String, dynamic> json) =>
      _$VideoFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$VideoFieldsToJson(this);
}

@JsonSerializable()
class File {
  final String url;
  final FileDetails details;
  final String fileName;
  final String contentType;

  File({
    required this.url,
    required this.details,
    required this.fileName,
    required this.contentType,
  });

  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
  Map<String, dynamic> toJson() => _$FileToJson(this);
}

@JsonSerializable()
class FileDetails {
  final int size;
  final ImageDetails? image;

  FileDetails({
    required this.size,
    this.image,
  });

  factory FileDetails.fromJson(Map<String, dynamic> json) =>
      _$FileDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$FileDetailsToJson(this);
}

@JsonSerializable()
class ImageDetails {
  final int width;
  final int height;

  ImageDetails({
    required this.width,
    required this.height,
  });

  factory ImageDetails.fromJson(Map<String, dynamic> json) =>
      _$ImageDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ImageDetailsToJson(this);
}

@JsonSerializable()
class LayoutBlockFields {
  final String layout;
  final String description;
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

@JsonSerializable()
class SectionBlockFields {
  final String title;
  final List<String> colorBackground;
  final String displayTitle;
  final String displayTitleWidth;
  final String eyebrowText;
  final List<CardContainer> innerBlocks;

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
class CardContainer {
  final CardContainerFields fields;
  final String contentType;
  final String id;
  final String locale;

  CardContainer({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory CardContainer.fromJson(Map<String, dynamic> json) =>
      _$CardContainerFromJson(json);
  Map<String, dynamic> toJson() => _$CardContainerToJson(this);
}

@JsonSerializable()
class CardContainerFields {
  final String title;
  final List<Card> cards;
  final List<String> cardType;

  CardContainerFields({
    required this.title,
    required this.cards,
    required this.cardType,
  });

  factory CardContainerFields.fromJson(Map<String, dynamic> json) =>
      _$CardContainerFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$CardContainerFieldsToJson(this);
}

@JsonSerializable()
class Card {
  final CardFields fields;
  final String contentType;
  final String id;
  final String locale;

  Card({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
  Map<String, dynamic> toJson() => _$CardToJson(this);
}

@JsonSerializable()
class CardFields {
  final String title;
  final String text;
  final Cta cta;
  final Image image;

  CardFields({
    required this.title,
    required this.text,
    required this.cta,
    required this.image,
  });

  factory CardFields.fromJson(Map<String, dynamic> json) =>
      _$CardFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$CardFieldsToJson(this);
}

@JsonSerializable()
class Cta {
  final CtaFields fields;
  final String contentType;
  final String id;
  final String locale;

  Cta({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory Cta.fromJson(Map<String, dynamic> json) => _$CtaFromJson(json);
  Map<String, dynamic> toJson() => _$CtaToJson(this);
}

@JsonSerializable()
class CtaFields {
  final String linkText;
  final String linkUrl;
  final bool jumpToLink;
  final String? ariaLabel;

  CtaFields({
    required this.linkText,
    required this.linkUrl,
    required this.jumpToLink,
    this.ariaLabel,
  });

  factory CtaFields.fromJson(Map<String, dynamic> json) =>
      _$CtaFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$CtaFieldsToJson(this);
}

@JsonSerializable()
class Image {
  final ImageFields fields;
  final String contentType;
  final String id;
  final String locale;

  Image({
    required this.fields,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class ImageFields {
  final String title;
  final String description;
  final File file;

  ImageFields({
    required this.title,
    required this.description,
    required this.file,
  });

  factory ImageFields.fromJson(Map<String, dynamic> json) =>
      _$ImageFieldsFromJson(json);
  Map<String, dynamic> toJson() => _$ImageFieldsToJson(this);
}