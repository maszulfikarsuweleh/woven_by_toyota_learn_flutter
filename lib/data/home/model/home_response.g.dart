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
  fields: InnerBlock._fromFieldsJson(json['fields'] as Map<String, dynamic>?),
  contentType: json['contentType'] as String? ?? '',
  id: json['id'] as String? ?? '',
  locale: json['locale'] as String? ?? '',
);

Map<String, dynamic> _$InnerBlockToJson(InnerBlock instance) =>
    <String, dynamic>{
      'fields': InnerBlock._toFieldsJson(instance.fields),
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
