import 'package:json_annotation/json_annotation.dart';

part 'common_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CommonResponse {
  final PageProps pageProps;

  @JsonKey(defaultValue: "")
  final String contentType;

  @JsonKey(defaultValue: "")
  final String id;

  @JsonKey(defaultValue: "")
  final String locale;

  CommonResponse({
    required this.pageProps,
    required this.contentType,
    required this.id,
    required this.locale,
  });

  factory CommonResponse.fromJson(Map<String, dynamic> json) =>
      _$CommonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommonResponseToJson(this);
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
  final FieldResponse fields;

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
        required this.heading,
        required this.newsPosts,
        required this.fields,
        required this.thumbnail,
        required this.name,
        required this.sectionTitle,
        required this.titleText,
        required this.backgroundImage,
        required this.joinOurTeam,
        required this.slug,
    });

    final String? slug;
    final FieldResponse? backgroundImage;
    final String? titleText;
    final String? sectionTitle;
    final String? name;
    final Thumbnail? thumbnail;
    final FieldResponse? fields;
    @JsonKey(defaultValue: [])
    final List<FieldResponse>? newsPosts;
    final String? heading;
    final String? displayName;
    final String? title;
    final String? description;
    final FileClass? file;
    final String? theme;
    final String? id;
    final String? locale;
    final String? layout;
    @JsonKey(defaultValue: [])
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
    @JsonKey(defaultValue: [])
    final List<String>? topic;
    final Video? video;
    @JsonKey(defaultValue: [])
    final List<Card>? cards;
    final Image? image;
    @JsonKey(defaultValue: [])
    final List<InnerBlock>? innerBlocks;
    final Cta? cta;
    @JsonKey(defaultValue: [])
    final List<String>? cardType;
    final FieldResponse? joinOurTeam;

    factory FieldResponse.fromJson(Map<String, dynamic> json) => _$FieldResponseFromJson(json);

    Map<String, dynamic> toJson() => _$FieldResponseToJson(this);

}

@JsonSerializable()
class Thumbnail {
    Thumbnail({
        required this.fields
    });

    final FieldResponse? fields;

    factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);

    Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

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