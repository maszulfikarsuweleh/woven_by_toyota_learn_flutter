// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
  pageProps: PageProps.fromJson(json['pageProps'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{'pageProps': instance.pageProps};

PageProps _$PagePropsFromJson(Map<String, dynamic> json) => PageProps(
  head: Head.fromJson(json['head'] as Map<String, dynamic>),
  data: Data.fromJson(json['data'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$PagePropsToJson(PageProps instance) => <String, dynamic>{
  'head': instance.head,
  'data': instance.data,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

Head _$HeadFromJson(Map<String, dynamic> json) => Head(
  title: json['title'] as String,
  description: json['description'] as String,
  keywords: (json['keywords'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  siteName: json['siteName'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$HeadToJson(Head instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'keywords': instance.keywords,
  'siteName': instance.siteName,
  'image': instance.image,
};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  fields: Fields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

Fields _$FieldsFromJson(Map<String, dynamic> json) => Fields(
  pageTitle: json['pageTitle'] as String,
  slug: json['slug'] as String,
  innerBlocks: (json['innerBlocks'] as List<dynamic>)
      .map((e) => InnerBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
  'pageTitle': instance.pageTitle,
  'slug': instance.slug,
  'innerBlocks': instance.innerBlocks,
};

InnerBlock _$InnerBlockFromJson(Map<String, dynamic> json) => InnerBlock(
  fields: json['fields'],
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$InnerBlockToJson(InnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

VideoBlockFields _$VideoBlockFieldsFromJson(Map<String, dynamic> json) =>
    VideoBlockFields(
      displayName: json['displayName'] as String,
      title: json['title'] as String,
      video: Video.fromJson(json['video'] as Map<String, dynamic>),
      theme: json['theme'] as String,
    );

Map<String, dynamic> _$VideoBlockFieldsToJson(VideoBlockFields instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'title': instance.title,
      'video': instance.video,
      'theme': instance.theme,
    };

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
  fields: VideoFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

VideoFields _$VideoFieldsFromJson(Map<String, dynamic> json) => VideoFields(
  title: json['title'] as String,
  description: json['description'] as String,
  file: File.fromJson(json['file'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideoFieldsToJson(VideoFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
    };

File _$FileFromJson(Map<String, dynamic> json) => File(
  url: json['url'] as String,
  details: FileDetails.fromJson(json['details'] as Map<String, dynamic>),
  fileName: json['fileName'] as String,
  contentType: json['contentType'] as String,
);

Map<String, dynamic> _$FileToJson(File instance) => <String, dynamic>{
  'url': instance.url,
  'details': instance.details,
  'fileName': instance.fileName,
  'contentType': instance.contentType,
};

FileDetails _$FileDetailsFromJson(Map<String, dynamic> json) => FileDetails(
  size: (json['size'] as num).toInt(),
  image: json['image'] == null
      ? null
      : ImageDetails.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FileDetailsToJson(FileDetails instance) =>
    <String, dynamic>{'size': instance.size, 'image': instance.image};

ImageDetails _$ImageDetailsFromJson(Map<String, dynamic> json) => ImageDetails(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
);

Map<String, dynamic> _$ImageDetailsToJson(ImageDetails instance) =>
    <String, dynamic>{'width': instance.width, 'height': instance.height};

LayoutBlockFields _$LayoutBlockFieldsFromJson(Map<String, dynamic> json) =>
    LayoutBlockFields(
      layout: json['layout'] as String,
      description: json['description'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$LayoutBlockFieldsToJson(LayoutBlockFields instance) =>
    <String, dynamic>{
      'layout': instance.layout,
      'description': instance.description,
      'displayName': instance.displayName,
    };

SectionBlockFields _$SectionBlockFieldsFromJson(Map<String, dynamic> json) =>
    SectionBlockFields(
      title: json['title'] as String,
      colorBackground: (json['colorBackground'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      displayTitle: json['displayTitle'] as String,
      displayTitleWidth: json['displayTitleWidth'] as String,
      eyebrowText: json['eyebrowText'] as String,
      innerBlocks: (json['innerBlocks'] as List<dynamic>)
          .map((e) => CardContainer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionBlockFieldsToJson(SectionBlockFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'colorBackground': instance.colorBackground,
      'displayTitle': instance.displayTitle,
      'displayTitleWidth': instance.displayTitleWidth,
      'eyebrowText': instance.eyebrowText,
      'innerBlocks': instance.innerBlocks,
    };

CardContainer _$CardContainerFromJson(Map<String, dynamic> json) =>
    CardContainer(
      fields: CardContainerFields.fromJson(
        json['fields'] as Map<String, dynamic>,
      ),
      contentType: json['contentType'] as String,
      id: json['id'] as String,
      locale: json['locale'] as String,
    );

Map<String, dynamic> _$CardContainerToJson(CardContainer instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

CardContainerFields _$CardContainerFieldsFromJson(Map<String, dynamic> json) =>
    CardContainerFields(
      title: json['title'] as String,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardType: (json['cardType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CardContainerFieldsToJson(
  CardContainerFields instance,
) => <String, dynamic>{
  'title': instance.title,
  'cards': instance.cards,
  'cardType': instance.cardType,
};

Card _$CardFromJson(Map<String, dynamic> json) => Card(
  fields: CardFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

CardFields _$CardFieldsFromJson(Map<String, dynamic> json) => CardFields(
  title: json['title'] as String,
  text: json['text'] as String,
  cta: Cta.fromJson(json['cta'] as Map<String, dynamic>),
  image: Image.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CardFieldsToJson(CardFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'cta': instance.cta,
      'image': instance.image,
    };

Cta _$CtaFromJson(Map<String, dynamic> json) => Cta(
  fields: CtaFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$CtaToJson(Cta instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

CtaFields _$CtaFieldsFromJson(Map<String, dynamic> json) => CtaFields(
  linkText: json['linkText'] as String,
  linkUrl: json['linkUrl'] as String,
  jumpToLink: json['jumpToLink'] as bool,
  ariaLabel: json['ariaLabel'] as String?,
);

Map<String, dynamic> _$CtaFieldsToJson(CtaFields instance) => <String, dynamic>{
  'linkText': instance.linkText,
  'linkUrl': instance.linkUrl,
  'jumpToLink': instance.jumpToLink,
  'ariaLabel': instance.ariaLabel,
};

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
  fields: ImageFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String,
  id: json['id'] as String,
  locale: json['locale'] as String,
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

ImageFields _$ImageFieldsFromJson(Map<String, dynamic> json) => ImageFields(
  title: json['title'] as String,
  description: json['description'] as String,
  file: File.fromJson(json['file'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ImageFieldsToJson(ImageFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
    };
