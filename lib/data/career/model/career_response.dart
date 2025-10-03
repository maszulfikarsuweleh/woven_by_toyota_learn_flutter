import 'package:json_annotation/json_annotation.dart';

part 'career_response.g.dart';

@JsonSerializable()
class CareerResponse {
    CareerResponse({
        required this.pageProps,
        required this.nSsg,
    });

    final PageProps? pageProps;

    @JsonKey(name: '__N_SSG') 
    final bool? nSsg;

    factory CareerResponse.fromJson(Map<String, dynamic> json) => _$CareerResponseFromJson(json);

    Map<String, dynamic> toJson() => _$CareerResponseToJson(this);

}

@JsonSerializable()
class PageProps {
    PageProps({
        required this.head,
        required this.data,
    });

    final Head? head;
    final PagePropsData? data;

    factory PageProps.fromJson(Map<String, dynamic> json) => _$PagePropsFromJson(json);

    Map<String, dynamic> toJson() => _$PagePropsToJson(this);

}

@JsonSerializable()
class PagePropsData {
    PagePropsData({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final DataFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory PagePropsData.fromJson(Map<String, dynamic> json) => _$PagePropsDataFromJson(json);

    Map<String, dynamic> toJson() => _$PagePropsDataToJson(this);

}

@JsonSerializable()
class DataFields {
    DataFields({
        required this.pageTitle,
        required this.slug,
        required this.innerBlocks,
        required this.metadata,
    });

    final String? pageTitle;
    final String? slug;
    final List<PurpleInnerBlock>? innerBlocks;
    final Metadata? metadata;

    factory DataFields.fromJson(Map<String, dynamic> json) => _$DataFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$DataFieldsToJson(this);

}

@JsonSerializable()
class PurpleInnerBlock {
    PurpleInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final PurpleFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory PurpleInnerBlock.fromJson(Map<String, dynamic> json) => _$PurpleInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$PurpleInnerBlockToJson(this);

}

@JsonSerializable()
class PurpleFields {
    PurpleFields({
        required this.displayName,
        required this.title,
        required this.image,
        required this.mobileImage,
        required this.theme,
        required this.eyebrow,
        required this.header,
        required this.layout,
        required this.description,
        required this.name,
        required this.eyebrowText,
        required this.filtersLabel,
        required this.searchLabel,
        required this.cleanLabel,
        required this.noResultsLabel,
        required this.noResultsDescription,
        required this.fetchingDataLabel,
        required this.fetchingDataDescription,
        required this.size,
        required this.colorBackground,
        required this.innerBlocks,
        required this.displayTitleWidth,
        required this.sectionType,
        required this.displayTitle,
    });

    final String? displayName;
    final String? title;
    final MetaShareImage? image;
    final MetaShareImage? mobileImage;
    final String? theme;
    final String? eyebrow;
    final String? header;
    final String? layout;
    final String? description;
    final String? name;
    final String? eyebrowText;
    final String? filtersLabel;
    final String? searchLabel;
    final String? cleanLabel;
    final String? noResultsLabel;
    final String? noResultsDescription;
    final String? fetchingDataLabel;
    final String? fetchingDataDescription;
    final String? size;
    final List<String>? colorBackground;
    final List<FluffyInnerBlock>? innerBlocks;
    final String? displayTitleWidth;
    final String? sectionType;
    final String? displayTitle;

    factory PurpleFields.fromJson(Map<String, dynamic> json) => _$PurpleFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$PurpleFieldsToJson(this);

}

@JsonSerializable()
class MetaShareImage {
    MetaShareImage({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final MetaShareImageFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory MetaShareImage.fromJson(Map<String, dynamic> json) => _$MetaShareImageFromJson(json);

    Map<String, dynamic> toJson() => _$MetaShareImageToJson(this);

}

@JsonSerializable()
class MetaShareImageFields {
    MetaShareImageFields({
        required this.title,
        required this.description,
        required this.file,
        required this.size,
    });

    final String? title;
    final String? description;
    final FileClass? file;
    final String? size;

    factory MetaShareImageFields.fromJson(Map<String, dynamic> json) => _$MetaShareImageFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$MetaShareImageFieldsToJson(this);

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
    });

    final int? width;
    final int? height;

    factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

    Map<String, dynamic> toJson() => _$ImageToJson(this);

}

@JsonSerializable()
class FluffyInnerBlock {
    FluffyInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final FluffyFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory FluffyInnerBlock.fromJson(Map<String, dynamic> json) => _$FluffyInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$FluffyInnerBlockToJson(this);

}

@JsonSerializable()
class FluffyFields {
    FluffyFields({
        required this.eyebrow,
        required this.header,
        required this.layout,
        required this.displayName,
        required this.title,
        required this.innerBlocks,
        required this.colorBackground,
        required this.description,
        required this.ctaTheme,
        required this.ctaLabel,
        required this.ctaLink,
        required this.filterByCategory,
        required this.filterByTopic,
        required this.elementClass,
        required this.cards,
        required this.cardType,
    });

    final String? eyebrow;
    final String? header;
    final String? layout;
    final String? displayName;
    final String? title;
    final List<TentacledInnerBlock>? innerBlocks;
    final String? colorBackground;
    final String? description;
    final String? ctaTheme;
    final String? ctaLabel;
    final String? ctaLink;
    final String? filterByCategory;
    final List<String>? filterByTopic;
    final String? elementClass;
    final List<Card>? cards;
    final List<String>? cardType;

    factory FluffyFields.fromJson(Map<String, dynamic> json) => _$FluffyFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$FluffyFieldsToJson(this);

}

@JsonSerializable()
class Card {
    Card({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final CardFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

    Map<String, dynamic> toJson() => _$CardToJson(this);

}

@JsonSerializable()
class CardFields {
    CardFields({
        required this.title,
        required this.text,
        required this.cta,
        required this.image,
    });

    final String? title;
    final String? text;
    final Cta? cta;
    final MetaShareImage? image;

    factory CardFields.fromJson(Map<String, dynamic> json) => _$CardFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$CardFieldsToJson(this);

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
    });

    final String? linkText;
    final String? linkUrl;
    final bool? jumpToLink;

    factory CtaFields.fromJson(Map<String, dynamic> json) => _$CtaFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$CtaFieldsToJson(this);

}

@JsonSerializable()
class TentacledInnerBlock {
    TentacledInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final TentacledFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory TentacledInnerBlock.fromJson(Map<String, dynamic> json) => _$TentacledInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$TentacledInnerBlockToJson(this);

}

@JsonSerializable()
class TentacledFields {
    TentacledFields({
        required this.tabTitle,
        required this.innerBlocks,
    });

    final String? tabTitle;
    final List<StickyInnerBlock>? innerBlocks;

    factory TentacledFields.fromJson(Map<String, dynamic> json) => _$TentacledFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$TentacledFieldsToJson(this);

}

@JsonSerializable()
class StickyInnerBlock {
    StickyInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final StickyFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory StickyInnerBlock.fromJson(Map<String, dynamic> json) => _$StickyInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$StickyInnerBlockToJson(this);

}

@JsonSerializable()
class StickyFields {
    StickyFields({
        required this.richtext,
        required this.linkText,
        required this.linkToPage,
        required this.jumpToLink,
        required this.linkUrl,
    });

    final Richtext? richtext;
    final String? linkText;
    final LinkToPage? linkToPage;
    final bool? jumpToLink;
    final String? linkUrl;

    factory StickyFields.fromJson(Map<String, dynamic> json) => _$StickyFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$StickyFieldsToJson(this);

}

@JsonSerializable()
class LinkToPage {
    LinkToPage({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final LinkToPageFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory LinkToPage.fromJson(Map<String, dynamic> json) => _$LinkToPageFromJson(json);

    Map<String, dynamic> toJson() => _$LinkToPageToJson(this);

}

@JsonSerializable()
class LinkToPageFields {
    LinkToPageFields({
        required this.pageTitle,
        required this.slug,
        required this.innerBlocks,
        required this.nextChapter,
        required this.metadata,
    });

    final String? pageTitle;
    final String? slug;
    final List<IndigoInnerBlock>? innerBlocks;
    final NextChapter? nextChapter;
    final Metadata? metadata;

    factory LinkToPageFields.fromJson(Map<String, dynamic> json) => _$LinkToPageFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$LinkToPageFieldsToJson(this);

}

@JsonSerializable()
class IndigoInnerBlock {
    IndigoInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final IndigoFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory IndigoInnerBlock.fromJson(Map<String, dynamic> json) => _$IndigoInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$IndigoInnerBlockToJson(this);

}

@JsonSerializable()
class IndigoFields {
    IndigoFields({
        required this.displayName,
        required this.title,
        required this.image,
        required this.mobileImage,
        required this.theme,
        required this.eyebrow,
        required this.header,
        required this.layout,
        required this.description,
        required this.colorBackground,
        required this.innerBlocks,
    });

    final String? displayName;
    final String? title;
    final MetaShareImage? image;
    final MetaShareImage? mobileImage;
    final String? theme;
    final String? eyebrow;
    final String? header;
    final String? layout;
    final String? description;
    final List<String>? colorBackground;
    final List<IndecentInnerBlock>? innerBlocks;

    factory IndigoFields.fromJson(Map<String, dynamic> json) => _$IndigoFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$IndigoFieldsToJson(this);

}

@JsonSerializable()
class IndecentInnerBlock {
    IndecentInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final IndecentFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory IndecentInnerBlock.fromJson(Map<String, dynamic> json) => _$IndecentInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$IndecentInnerBlockToJson(this);

}

@JsonSerializable()
class IndecentFields {
    IndecentFields({
        required this.eyebrow,
        required this.layout,
        required this.displayName,
        required this.title,
        required this.innerBlocks,
    });

    final String? eyebrow;
    final String? layout;
    final String? displayName;
    final String? title;
    final List<HilariousInnerBlock>? innerBlocks;

    factory IndecentFields.fromJson(Map<String, dynamic> json) => _$IndecentFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$IndecentFieldsToJson(this);

}

@JsonSerializable()
class HilariousInnerBlock {
    HilariousInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final HilariousFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory HilariousInnerBlock.fromJson(Map<String, dynamic> json) => _$HilariousInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$HilariousInnerBlockToJson(this);

}

@JsonSerializable()
class HilariousFields {
    HilariousFields({
        required this.tabTitle,
        required this.innerBlocks,
    });

    final String? tabTitle;
    final List<AmbitiousInnerBlock>? innerBlocks;

    factory HilariousFields.fromJson(Map<String, dynamic> json) => _$HilariousFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$HilariousFieldsToJson(this);

}

@JsonSerializable()
class AmbitiousInnerBlock {
    AmbitiousInnerBlock({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final AmbitiousFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory AmbitiousInnerBlock.fromJson(Map<String, dynamic> json) => _$AmbitiousInnerBlockFromJson(json);

    Map<String, dynamic> toJson() => _$AmbitiousInnerBlockToJson(this);

}

@JsonSerializable()
class AmbitiousFields {
    AmbitiousFields({
        required this.richtext,
    });

    final Richtext? richtext;

    factory AmbitiousFields.fromJson(Map<String, dynamic> json) => _$AmbitiousFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$AmbitiousFieldsToJson(this);

}

@JsonSerializable()
class Richtext {
    Richtext({
        required this.content,
        required this.nodeType,
    });

    final List<RichtextContent>? content;
    final String? nodeType;

    factory Richtext.fromJson(Map<String, dynamic> json) => _$RichtextFromJson(json);

    Map<String, dynamic> toJson() => _$RichtextToJson(this);

}

@JsonSerializable()
class RichtextContent {
    RichtextContent({
        required this.data,
        required this.content,
        required this.nodeType,
    });

    final PurpleData? data;
    final List<ContentContent>? content;
    final String? nodeType;

    factory RichtextContent.fromJson(Map<String, dynamic> json) => _$RichtextContentFromJson(json);

    Map<String, dynamic> toJson() => _$RichtextContentToJson(this);

}

@JsonSerializable()
class ContentContent {
    ContentContent({
        required this.marks,
        required this.value,
        required this.nodeType,
    });

    final List<dynamic>? marks;
    final String? value;
    final String? nodeType;

    factory ContentContent.fromJson(Map<String, dynamic> json) => _$ContentContentFromJson(json);

    Map<String, dynamic> toJson() => _$ContentContentToJson(this);

}

@JsonSerializable()
class PurpleData {
    PurpleData({
        required this.target,
    });

    final MetaShareImage? target;

    factory PurpleData.fromJson(Map<String, dynamic> json) => _$PurpleDataFromJson(json);

    Map<String, dynamic> toJson() => _$PurpleDataToJson(this);

}

@JsonSerializable()
class Metadata {
    Metadata({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final MetadataFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);

}

@JsonSerializable()
class MetadataFields {
    MetadataFields({
        required this.displayName,
        required this.metaTitle,
        required this.metaDescription,
        required this.metaSiteName,
        required this.metaShareImage,
    });

    final String? displayName;
    final String? metaTitle;
    final String? metaDescription;
    final String? metaSiteName;
    final MetaShareImage? metaShareImage;

    factory MetadataFields.fromJson(Map<String, dynamic> json) => _$MetadataFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataFieldsToJson(this);

}

@JsonSerializable()
class NextChapter {
    NextChapter({
        required this.fields,
        required this.contentType,
        required this.id,
        required this.locale,
    });

    final NextChapterFields? fields;
    final String? contentType;
    final String? id;
    final String? locale;

    factory NextChapter.fromJson(Map<String, dynamic> json) => _$NextChapterFromJson(json);

    Map<String, dynamic> toJson() => _$NextChapterToJson(this);

}

@JsonSerializable()
class NextChapterFields {
    NextChapterFields({
        required this.name,
        required this.linkUrl,
        required this.eyebrowText,
        required this.titleText,
        required this.backgroundImage,
    });

    final String? name;
    final String? linkUrl;
    final String? eyebrowText;
    final String? titleText;
    final MetaShareImage? backgroundImage;

    factory NextChapterFields.fromJson(Map<String, dynamic> json) => _$NextChapterFieldsFromJson(json);

    Map<String, dynamic> toJson() => _$NextChapterFieldsToJson(this);

}

@JsonSerializable()
class Head {
    Head({
        required this.title,
        required this.description,
        required this.keywords,
        required this.siteName,
        required this.image,
    });

    final String? title;
    final String? description;
    final List<dynamic>? keywords;
    final String? siteName;
    final String? image;

    factory Head.fromJson(Map<String, dynamic> json) => _$HeadFromJson(json);

    Map<String, dynamic> toJson() => _$HeadToJson(this);

}
