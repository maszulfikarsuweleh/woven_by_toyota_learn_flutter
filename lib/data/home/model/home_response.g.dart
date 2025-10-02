// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
  pageProps: PageProps.fromJson(json['pageProps'] as Map<String, dynamic>),
  contentType: json['contentType'] as String? ?? '',
  id: json['id'] as String? ?? '',
  locale: json['locale'] as String? ?? '',
);

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'pageProps': instance.pageProps.toJson(),
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

PageProps _$PagePropsFromJson(Map<String, dynamic> json) => PageProps(
  head: Head.fromJson(json['head'] as Map<String, dynamic>),
  data: Data.fromJson(json['data'] as Map<String, dynamic>),
  contentType: json['contentType'] as String? ?? '',
  id: json['id'] as String? ?? '',
  locale: json['locale'] as String? ?? '',
);

Map<String, dynamic> _$PagePropsToJson(PageProps instance) => <String, dynamic>{
  'head': instance.head.toJson(),
  'data': instance.data.toJson(),
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

Head _$HeadFromJson(Map<String, dynamic> json) => Head(
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  keywords:
      (json['keywords'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  siteName: json['siteName'] as String? ?? '',
  image: json['image'] as String? ?? '',
);

Map<String, dynamic> _$HeadToJson(Head instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'keywords': instance.keywords,
  'siteName': instance.siteName,
  'image': instance.image,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  fields: DataFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String? ?? '',
  id: json['id'] as String? ?? '',
  locale: json['locale'] as String? ?? '',
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'fields': instance.fields.toJson(),
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

DataFields _$DataFieldsFromJson(Map<String, dynamic> json) => DataFields(
  pageTitle: json['pageTitle'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  innerBlocks:
      (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => InnerBlock.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$DataFieldsToJson(DataFields instance) =>
    <String, dynamic>{
      'pageTitle': instance.pageTitle,
      'slug': instance.slug,
      'innerBlocks': instance.innerBlocks.map((e) => e.toJson()).toList(),
    };

InnerBlock _$InnerBlockFromJson(Map<String, dynamic> json) => InnerBlock(
  fields: FieldResponse.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String? ?? '',
  id: json['id'] as String? ?? '',
  locale: json['locale'] as String? ?? '',
);

Map<String, dynamic> _$InnerBlockToJson(InnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields?.toJson(),
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

VideoBlockFields _$VideoBlockFieldsFromJson(Map<String, dynamic> json) =>
    VideoBlockFields(
      displayName: json['displayName'] as String? ?? '',
      title: json['title'] as String? ?? '',
      theme: json['theme'] as String? ?? '',
    );

Map<String, dynamic> _$VideoBlockFieldsToJson(VideoBlockFields instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'title': instance.title,
      'theme': instance.theme,
    };

LayoutBlockFields _$LayoutBlockFieldsFromJson(Map<String, dynamic> json) =>
    LayoutBlockFields(
      layout: json['layout'] as String? ?? '',
      description: json['description'] as String? ?? '',
      displayName: json['displayName'] as String? ?? '',
    );

Map<String, dynamic> _$LayoutBlockFieldsToJson(LayoutBlockFields instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'description': instance.description,
      'displayName': instance.displayName,
    };

SectionBlockFields _$SectionBlockFieldsFromJson(Map<String, dynamic> json) =>
    SectionBlockFields(
      title: json['title'] as String? ?? '',
      colorBackground:
          (json['colorBackground'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      displayTitle: json['displayTitle'] as String? ?? '',
      displayTitleWidth: json['displayTitleWidth'] as String? ?? '',
      eyebrowText: json['eyebrowText'] as String? ?? '',
      innerBlocks:
          (json['innerBlocks'] as List<dynamic>?)
              ?.map((e) => InnerBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SectionBlockFieldsToJson(SectionBlockFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'colorBackground': instance.colorBackground,
      'displayTitle': instance.displayTitle,
      'displayTitleWidth': instance.displayTitleWidth,
      'eyebrowText': instance.eyebrowText,
      'innerBlocks': instance.innerBlocks.map((e) => e.toJson()).toList(),
    };

FieldResponse _$FieldResponseFromJson(Map<String, dynamic> json) =>
    FieldResponse(
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      file: json['file'] == null
          ? null
          : FileClass.fromJson(json['file'] as Map<String, dynamic>),
      theme: json['theme'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
      layout: json['layout'] as String?,
      colorBackground: (json['colorBackground'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      displayTitle: json['displayTitle'] as String?,
      displayTitleWidth: json['displayTitleWidth'] as String?,
      eyebrowText: json['eyebrowText'] as String?,
      text: json['text'] as String?,
      linkText: json['linkText'] as String?,
      linkUrl: json['linkUrl'] as String?,
      jumpToLink: json['jumpToLink'] as bool?,
      ariaLabel: json['ariaLabel'] as String?,
      pageTitle: json['pageTitle'] as String?,
      publishDate: json['publishDate'] as String?,
      category: json['category'] as String?,
      topic: (json['topic'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      video: json['video'] == null
          ? null
          : Video.fromJson(json['video'] as Map<String, dynamic>),
      cards: (json['cards'] as List<dynamic>?)
          ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      innerBlocks: (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => InnerBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      cta: json['cta'] == null
          ? null
          : Cta.fromJson(json['cta'] as Map<String, dynamic>),
      cardType: (json['cardType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$FieldResponseToJson(FieldResponse instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
      'theme': instance.theme,
      'id': instance.id,
      'locale': instance.locale,
      'layout': instance.layout,
      'colorBackground': instance.colorBackground,
      'displayTitle': instance.displayTitle,
      'displayTitleWidth': instance.displayTitleWidth,
      'eyebrowText': instance.eyebrowText,
      'text': instance.text,
      'linkText': instance.linkText,
      'linkUrl': instance.linkUrl,
      'jumpToLink': instance.jumpToLink,
      'ariaLabel': instance.ariaLabel,
      'pageTitle': instance.pageTitle,
      'publishDate': instance.publishDate,
      'category': instance.category,
      'topic': instance.topic,
      'video': instance.video,
      'cards': instance.cards,
      'image': instance.image,
      'innerBlocks': instance.innerBlocks,
      'cta': instance.cta,
      'cardType': instance.cardType,
    };

Card _$CardFromJson(Map<String, dynamic> json) => Card(
  fields: json['fields'] == null
      ? null
      : FieldResponse.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
  fields: json['fields'] == null
      ? null
      : FieldResponse.fromJson(json['fields'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
  'fields': instance.fields,
};

FileClass _$FileClassFromJson(Map<String, dynamic> json) => FileClass(
  url: json['url'] as String?,
  details: json['details'] == null
      ? null
      : Details.fromJson(json['details'] as Map<String, dynamic>),
  fileName: json['fileName'] as String?,
  contentType: json['contentType'] as String?,
);

Map<String, dynamic> _$FileClassToJson(FileClass instance) => <String, dynamic>{
  'url': instance.url,
  'details': instance.details,
  'fileName': instance.fileName,
  'contentType': instance.contentType,
};

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
  size: (json['size'] as num?)?.toInt(),
  image: json['image'] == null
      ? null
      : Image.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
  'size': instance.size,
  'image': instance.image,
};

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  fields: json['fields'] == null
      ? null
      : FieldResponse.fromJson(json['fields'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'fields': instance.fields,
};

Cta _$CtaFromJson(Map<String, dynamic> json) => Cta(
  fields: json['fields'] == null
      ? null
      : CtaFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$CtaToJson(Cta instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

CtaFields _$CtaFieldsFromJson(Map<String, dynamic> json) => CtaFields(
  linkText: json['linkText'] as String?,
  linkUrl: json['linkUrl'] as String?,
  jumpToLink: json['jumpToLink'] as bool?,
  ariaLabel: json['ariaLabel'] as String?,
);

Map<String, dynamic> _$CtaFieldsToJson(CtaFields instance) => <String, dynamic>{
  'linkText': instance.linkText,
  'linkUrl': instance.linkUrl,
  'jumpToLink': instance.jumpToLink,
  'ariaLabel': instance.ariaLabel,
};

FieldsImage _$FieldsImageFromJson(Map<String, dynamic> json) => FieldsImage(
  fields: json['fields'] == null
      ? null
      : ImageFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$FieldsImageToJson(FieldsImage instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

ImageFields _$ImageFieldsFromJson(Map<String, dynamic> json) => ImageFields(
  title: json['title'] as String?,
  description: json['description'] as String?,
  file: json['file'] == null
      ? null
      : FileClass.fromJson(json['file'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ImageFieldsToJson(ImageFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
    };

DetailsImage _$DetailsImageFromJson(Map<String, dynamic> json) => DetailsImage(
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
);

Map<String, dynamic> _$DetailsImageToJson(DetailsImage instance) =>
    <String, dynamic>{'width': instance.width, 'height': instance.height};
