// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CareerResponse _$CareerResponseFromJson(Map<String, dynamic> json) =>
    CareerResponse(
      pageProps: json['pageProps'] == null
          ? null
          : PageProps.fromJson(json['pageProps'] as Map<String, dynamic>),
      nSsg: json['__N_SSG'] as bool?,
    );

Map<String, dynamic> _$CareerResponseToJson(CareerResponse instance) =>
    <String, dynamic>{
      'pageProps': instance.pageProps,
      '__N_SSG': instance.nSsg,
    };

PageProps _$PagePropsFromJson(Map<String, dynamic> json) => PageProps(
  head: json['head'] == null
      ? null
      : Head.fromJson(json['head'] as Map<String, dynamic>),
  data: json['data'] == null
      ? null
      : PagePropsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PagePropsToJson(PageProps instance) => <String, dynamic>{
  'head': instance.head,
  'data': instance.data,
};

PagePropsData _$PagePropsDataFromJson(Map<String, dynamic> json) =>
    PagePropsData(
      fields: json['fields'] == null
          ? null
          : DataFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$PagePropsDataToJson(PagePropsData instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

DataFields _$DataFieldsFromJson(Map<String, dynamic> json) => DataFields(
  pageTitle: json['pageTitle'] as String?,
  slug: json['slug'] as String?,
  innerBlocks: (json['innerBlocks'] as List<dynamic>?)
      ?.map((e) => PurpleInnerBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  metadata: json['metadata'] == null
      ? null
      : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataFieldsToJson(DataFields instance) =>
    <String, dynamic>{
      'pageTitle': instance.pageTitle,
      'slug': instance.slug,
      'innerBlocks': instance.innerBlocks,
      'metadata': instance.metadata,
    };

PurpleInnerBlock _$PurpleInnerBlockFromJson(Map<String, dynamic> json) =>
    PurpleInnerBlock(
      fields: json['fields'] == null
          ? null
          : PurpleFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$PurpleInnerBlockToJson(PurpleInnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

PurpleFields _$PurpleFieldsFromJson(Map<String, dynamic> json) => PurpleFields(
  displayName: json['displayName'] as String?,
  title: json['title'] as String?,
  image: json['image'] == null
      ? null
      : MetaShareImage.fromJson(json['image'] as Map<String, dynamic>),
  mobileImage: json['mobileImage'] == null
      ? null
      : MetaShareImage.fromJson(json['mobileImage'] as Map<String, dynamic>),
  theme: json['theme'] as String?,
  eyebrow: json['eyebrow'] as String?,
  header: json['header'] as String?,
  layout: json['layout'] as String?,
  description: json['description'] as String?,
  name: json['name'] as String?,
  eyebrowText: json['eyebrowText'] as String?,
  filtersLabel: json['filtersLabel'] as String?,
  searchLabel: json['searchLabel'] as String?,
  cleanLabel: json['cleanLabel'] as String?,
  noResultsLabel: json['noResultsLabel'] as String?,
  noResultsDescription: json['noResultsDescription'] as String?,
  fetchingDataLabel: json['fetchingDataLabel'] as String?,
  fetchingDataDescription: json['fetchingDataDescription'] as String?,
  size: json['size'] as String?,
  colorBackground: (json['colorBackground'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  innerBlocks: (json['innerBlocks'] as List<dynamic>?)
      ?.map((e) => FluffyInnerBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  displayTitleWidth: json['displayTitleWidth'] as String?,
  sectionType: json['sectionType'] as String?,
  displayTitle: json['displayTitle'] as String?,
);

Map<String, dynamic> _$PurpleFieldsToJson(PurpleFields instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'title': instance.title,
      'image': instance.image,
      'mobileImage': instance.mobileImage,
      'theme': instance.theme,
      'eyebrow': instance.eyebrow,
      'header': instance.header,
      'layout': instance.layout,
      'description': instance.description,
      'name': instance.name,
      'eyebrowText': instance.eyebrowText,
      'filtersLabel': instance.filtersLabel,
      'searchLabel': instance.searchLabel,
      'cleanLabel': instance.cleanLabel,
      'noResultsLabel': instance.noResultsLabel,
      'noResultsDescription': instance.noResultsDescription,
      'fetchingDataLabel': instance.fetchingDataLabel,
      'fetchingDataDescription': instance.fetchingDataDescription,
      'size': instance.size,
      'colorBackground': instance.colorBackground,
      'innerBlocks': instance.innerBlocks,
      'displayTitleWidth': instance.displayTitleWidth,
      'sectionType': instance.sectionType,
      'displayTitle': instance.displayTitle,
    };

MetaShareImage _$MetaShareImageFromJson(Map<String, dynamic> json) =>
    MetaShareImage(
      fields: json['fields'] == null
          ? null
          : MetaShareImageFields.fromJson(
              json['fields'] as Map<String, dynamic>,
            ),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$MetaShareImageToJson(MetaShareImage instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

MetaShareImageFields _$MetaShareImageFieldsFromJson(
  Map<String, dynamic> json,
) => MetaShareImageFields(
  title: json['title'] as String?,
  description: json['description'] as String?,
  file: json['file'] == null
      ? null
      : FileClass.fromJson(json['file'] as Map<String, dynamic>),
  size: json['size'] as String?,
);

Map<String, dynamic> _$MetaShareImageFieldsToJson(
  MetaShareImageFields instance,
) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'file': instance.file,
  'size': instance.size,
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
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
};

FluffyInnerBlock _$FluffyInnerBlockFromJson(Map<String, dynamic> json) =>
    FluffyInnerBlock(
      fields: json['fields'] == null
          ? null
          : FluffyFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$FluffyInnerBlockToJson(FluffyInnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

FluffyFields _$FluffyFieldsFromJson(Map<String, dynamic> json) => FluffyFields(
  eyebrow: json['eyebrow'] as String?,
  header: json['header'] as String?,
  layout: json['layout'] as String?,
  displayName: json['displayName'] as String?,
  title: json['title'] as String?,
  innerBlocks: (json['innerBlocks'] as List<dynamic>?)
      ?.map((e) => TentacledInnerBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
  colorBackground: json['colorBackground'] as String?,
  description: json['description'] as String?,
  ctaTheme: json['ctaTheme'] as String?,
  ctaLabel: json['ctaLabel'] as String?,
  ctaLink: json['ctaLink'] as String?,
  filterByCategory: json['filterByCategory'] as String?,
  filterByTopic: (json['filterByTopic'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  elementClass: json['elementClass'] as String?,
  cards: (json['cards'] as List<dynamic>?)
      ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
      .toList(),
  cardType: (json['cardType'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  eyebrowText: json['eyebrowText'] as String?,
);

Map<String, dynamic> _$FluffyFieldsToJson(FluffyFields instance) =>
    <String, dynamic>{
      'eyebrow': instance.eyebrow,
      'eyebrowText': instance.eyebrowText,
      'header': instance.header,
      'layout': instance.layout,
      'displayName': instance.displayName,
      'title': instance.title,
      'innerBlocks': instance.innerBlocks,
      'colorBackground': instance.colorBackground,
      'description': instance.description,
      'ctaTheme': instance.ctaTheme,
      'ctaLabel': instance.ctaLabel,
      'ctaLink': instance.ctaLink,
      'filterByCategory': instance.filterByCategory,
      'filterByTopic': instance.filterByTopic,
      'elementClass': instance.elementClass,
      'cards': instance.cards,
      'cardType': instance.cardType,
    };

Card _$CardFromJson(Map<String, dynamic> json) => Card(
  fields: json['fields'] == null
      ? null
      : CardFields.fromJson(json['fields'] as Map<String, dynamic>),
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

CardFields _$CardFieldsFromJson(Map<String, dynamic> json) => CardFields(
  title: json['title'] as String?,
  text: json['text'] as String?,
  cta: json['cta'] == null
      ? null
      : Cta.fromJson(json['cta'] as Map<String, dynamic>),
  image: json['image'] == null
      ? null
      : MetaShareImage.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CardFieldsToJson(CardFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'cta': instance.cta,
      'image': instance.image,
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
);

Map<String, dynamic> _$CtaFieldsToJson(CtaFields instance) => <String, dynamic>{
  'linkText': instance.linkText,
  'linkUrl': instance.linkUrl,
  'jumpToLink': instance.jumpToLink,
};

TentacledInnerBlock _$TentacledInnerBlockFromJson(Map<String, dynamic> json) =>
    TentacledInnerBlock(
      fields: json['fields'] == null
          ? null
          : TentacledFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$TentacledInnerBlockToJson(
  TentacledInnerBlock instance,
) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

TentacledFields _$TentacledFieldsFromJson(Map<String, dynamic> json) =>
    TentacledFields(
      tabTitle: json['tabTitle'] as String?,
      innerBlocks: (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => StickyInnerBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TentacledFieldsToJson(TentacledFields instance) =>
    <String, dynamic>{
      'tabTitle': instance.tabTitle,
      'innerBlocks': instance.innerBlocks,
    };

StickyInnerBlock _$StickyInnerBlockFromJson(Map<String, dynamic> json) =>
    StickyInnerBlock(
      fields: json['fields'] == null
          ? null
          : StickyFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$StickyInnerBlockToJson(StickyInnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

StickyFields _$StickyFieldsFromJson(Map<String, dynamic> json) => StickyFields(
  richtext: json['richtext'] == null
      ? null
      : Richtext.fromJson(json['richtext'] as Map<String, dynamic>),
  linkText: json['linkText'] as String?,
  linkToPage: json['linkToPage'] == null
      ? null
      : LinkToPage.fromJson(json['linkToPage'] as Map<String, dynamic>),
  jumpToLink: json['jumpToLink'] as bool?,
  linkUrl: json['linkUrl'] as String?,
);

Map<String, dynamic> _$StickyFieldsToJson(StickyFields instance) =>
    <String, dynamic>{
      'richtext': instance.richtext,
      'linkText': instance.linkText,
      'linkToPage': instance.linkToPage,
      'jumpToLink': instance.jumpToLink,
      'linkUrl': instance.linkUrl,
    };

LinkToPage _$LinkToPageFromJson(Map<String, dynamic> json) => LinkToPage(
  fields: json['fields'] == null
      ? null
      : LinkToPageFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$LinkToPageToJson(LinkToPage instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

LinkToPageFields _$LinkToPageFieldsFromJson(Map<String, dynamic> json) =>
    LinkToPageFields(
      pageTitle: json['pageTitle'] as String?,
      slug: json['slug'] as String?,
      innerBlocks: (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => IndigoInnerBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextChapter: json['nextChapter'] == null
          ? null
          : NextChapter.fromJson(json['nextChapter'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LinkToPageFieldsToJson(LinkToPageFields instance) =>
    <String, dynamic>{
      'pageTitle': instance.pageTitle,
      'slug': instance.slug,
      'innerBlocks': instance.innerBlocks,
      'nextChapter': instance.nextChapter,
      'metadata': instance.metadata,
    };

IndigoInnerBlock _$IndigoInnerBlockFromJson(Map<String, dynamic> json) =>
    IndigoInnerBlock(
      fields: json['fields'] == null
          ? null
          : IndigoFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$IndigoInnerBlockToJson(IndigoInnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

IndigoFields _$IndigoFieldsFromJson(Map<String, dynamic> json) => IndigoFields(
  displayName: json['displayName'] as String?,
  title: json['title'] as String?,
  image: json['image'] == null
      ? null
      : MetaShareImage.fromJson(json['image'] as Map<String, dynamic>),
  mobileImage: json['mobileImage'] == null
      ? null
      : MetaShareImage.fromJson(json['mobileImage'] as Map<String, dynamic>),
  theme: json['theme'] as String?,
  eyebrow: json['eyebrow'] as String?,
  header: json['header'] as String?,
  layout: json['layout'] as String?,
  description: json['description'] as String?,
  colorBackground: (json['colorBackground'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  innerBlocks: (json['innerBlocks'] as List<dynamic>?)
      ?.map((e) => IndecentInnerBlock.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$IndigoFieldsToJson(IndigoFields instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'title': instance.title,
      'image': instance.image,
      'mobileImage': instance.mobileImage,
      'theme': instance.theme,
      'eyebrow': instance.eyebrow,
      'header': instance.header,
      'layout': instance.layout,
      'description': instance.description,
      'colorBackground': instance.colorBackground,
      'innerBlocks': instance.innerBlocks,
    };

IndecentInnerBlock _$IndecentInnerBlockFromJson(Map<String, dynamic> json) =>
    IndecentInnerBlock(
      fields: json['fields'] == null
          ? null
          : IndecentFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$IndecentInnerBlockToJson(IndecentInnerBlock instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

IndecentFields _$IndecentFieldsFromJson(Map<String, dynamic> json) =>
    IndecentFields(
      eyebrow: json['eyebrow'] as String?,
      layout: json['layout'] as String?,
      displayName: json['displayName'] as String?,
      title: json['title'] as String?,
      innerBlocks: (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => HilariousInnerBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IndecentFieldsToJson(IndecentFields instance) =>
    <String, dynamic>{
      'eyebrow': instance.eyebrow,
      'layout': instance.layout,
      'displayName': instance.displayName,
      'title': instance.title,
      'innerBlocks': instance.innerBlocks,
    };

HilariousInnerBlock _$HilariousInnerBlockFromJson(Map<String, dynamic> json) =>
    HilariousInnerBlock(
      fields: json['fields'] == null
          ? null
          : HilariousFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$HilariousInnerBlockToJson(
  HilariousInnerBlock instance,
) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

HilariousFields _$HilariousFieldsFromJson(Map<String, dynamic> json) =>
    HilariousFields(
      tabTitle: json['tabTitle'] as String?,
      innerBlocks: (json['innerBlocks'] as List<dynamic>?)
          ?.map((e) => AmbitiousInnerBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HilariousFieldsToJson(HilariousFields instance) =>
    <String, dynamic>{
      'tabTitle': instance.tabTitle,
      'innerBlocks': instance.innerBlocks,
    };

AmbitiousInnerBlock _$AmbitiousInnerBlockFromJson(Map<String, dynamic> json) =>
    AmbitiousInnerBlock(
      fields: json['fields'] == null
          ? null
          : AmbitiousFields.fromJson(json['fields'] as Map<String, dynamic>),
      contentType: json['contentType'] as String?,
      id: json['id'] as String?,
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$AmbitiousInnerBlockToJson(
  AmbitiousInnerBlock instance,
) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

AmbitiousFields _$AmbitiousFieldsFromJson(Map<String, dynamic> json) =>
    AmbitiousFields(
      richtext: json['richtext'] == null
          ? null
          : Richtext.fromJson(json['richtext'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmbitiousFieldsToJson(AmbitiousFields instance) =>
    <String, dynamic>{'richtext': instance.richtext};

Richtext _$RichtextFromJson(Map<String, dynamic> json) => Richtext(
  content: (json['content'] as List<dynamic>?)
      ?.map((e) => RichtextContent.fromJson(e as Map<String, dynamic>))
      .toList(),
  nodeType: json['nodeType'] as String?,
);

Map<String, dynamic> _$RichtextToJson(Richtext instance) => <String, dynamic>{
  'content': instance.content,
  'nodeType': instance.nodeType,
};

RichtextContent _$RichtextContentFromJson(Map<String, dynamic> json) =>
    RichtextContent(
      data: json['data'] == null
          ? null
          : PurpleData.fromJson(json['data'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ContentContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeType: json['nodeType'] as String?,
    );

Map<String, dynamic> _$RichtextContentToJson(RichtextContent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'content': instance.content,
      'nodeType': instance.nodeType,
    };

ContentContent _$ContentContentFromJson(Map<String, dynamic> json) =>
    ContentContent(
      marks: json['marks'] as List<dynamic>?,
      value: json['value'] as String?,
      nodeType: json['nodeType'] as String?,
    );

Map<String, dynamic> _$ContentContentToJson(ContentContent instance) =>
    <String, dynamic>{
      'marks': instance.marks,
      'value': instance.value,
      'nodeType': instance.nodeType,
    };

PurpleData _$PurpleDataFromJson(Map<String, dynamic> json) => PurpleData(
  target: json['target'] == null
      ? null
      : MetaShareImage.fromJson(json['target'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PurpleDataToJson(PurpleData instance) =>
    <String, dynamic>{'target': instance.target};

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
  fields: json['fields'] == null
      ? null
      : MetadataFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
  'fields': instance.fields,
  'contentType': instance.contentType,
  'id': instance.id,
  'locale': instance.locale,
};

MetadataFields _$MetadataFieldsFromJson(Map<String, dynamic> json) =>
    MetadataFields(
      displayName: json['displayName'] as String?,
      metaTitle: json['metaTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      metaSiteName: json['metaSiteName'] as String?,
      metaShareImage: json['metaShareImage'] == null
          ? null
          : MetaShareImage.fromJson(
              json['metaShareImage'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$MetadataFieldsToJson(MetadataFields instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'metaTitle': instance.metaTitle,
      'metaDescription': instance.metaDescription,
      'metaSiteName': instance.metaSiteName,
      'metaShareImage': instance.metaShareImage,
    };

NextChapter _$NextChapterFromJson(Map<String, dynamic> json) => NextChapter(
  fields: json['fields'] == null
      ? null
      : NextChapterFields.fromJson(json['fields'] as Map<String, dynamic>),
  contentType: json['contentType'] as String?,
  id: json['id'] as String?,
  locale: json['locale'] as String?,
);

Map<String, dynamic> _$NextChapterToJson(NextChapter instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'contentType': instance.contentType,
      'id': instance.id,
      'locale': instance.locale,
    };

NextChapterFields _$NextChapterFieldsFromJson(Map<String, dynamic> json) =>
    NextChapterFields(
      name: json['name'] as String?,
      linkUrl: json['linkUrl'] as String?,
      eyebrowText: json['eyebrowText'] as String?,
      titleText: json['titleText'] as String?,
      backgroundImage: json['backgroundImage'] == null
          ? null
          : MetaShareImage.fromJson(
              json['backgroundImage'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NextChapterFieldsToJson(NextChapterFields instance) =>
    <String, dynamic>{
      'name': instance.name,
      'linkUrl': instance.linkUrl,
      'eyebrowText': instance.eyebrowText,
      'titleText': instance.titleText,
      'backgroundImage': instance.backgroundImage,
    };

Head _$HeadFromJson(Map<String, dynamic> json) => Head(
  title: json['title'] as String?,
  description: json['description'] as String?,
  keywords: json['keywords'] as List<dynamic>?,
  siteName: json['siteName'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$HeadToJson(Head instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'keywords': instance.keywords,
  'siteName': instance.siteName,
  'image': instance.image,
};
