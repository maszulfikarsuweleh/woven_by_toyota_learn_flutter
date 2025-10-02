// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingResponse _$SettingResponseFromJson(Map<String, dynamic> json) =>
    SettingResponse(
      widget: json['widget'] == null
          ? null
          : Widget.fromJson(json['widget'] as Map<String, dynamic>),
    );

Widget _$WidgetFromJson(Map<String, dynamic> json) => Widget(
  enabled: json['enabled'] as bool?,
  position: json['position'] == null
      ? null
      : Position.fromJson(json['position'] as Map<String, dynamic>),
  theme: json['theme'] == null
      ? null
      : Theme.fromJson(json['theme'] as Map<String, dynamic>),
  content: json['content'] == null
      ? null
      : Content.fromJson(json['content'] as Map<String, dynamic>),
);

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
  cultures: (json['cultures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  contentDefault: json['contentDefault'] as String?,
  autodetectLanguage: json['autodetectLanguage'] as bool?,
);

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
  position: json['position'] as String?,
  distanceVerticalPx: (json['distanceVerticalPx'] as num?)?.toInt(),
  distanceHorizontalPx: (json['distanceHorizontalPx'] as num?)?.toInt(),
);

Theme _$ThemeFromJson(Map<String, dynamic> json) => Theme(
  closed: json['closed'] == null
      ? null
      : Closed.fromJson(json['closed'] as Map<String, dynamic>),
  opened: json['opened'] == null
      ? null
      : Opened.fromJson(json['opened'] as Map<String, dynamic>),
);

Closed _$ClosedFromJson(Map<String, dynamic> json) => Closed(
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
);

Opened _$OpenedFromJson(Map<String, dynamic> json) => Opened(
  backgroundColor: json['backgroundColor'] as String?,
  foregroundColor: json['foregroundColor'] as String?,
  highlightColor: json['highlightColor'] as String?,
  shadeColor: json['shadeColor'] as String?,
  changeBackgroundColor: json['changeBackgroundColor'] as String?,
  changeTextColor: json['changeTextColor'] as String?,
  changeBorderColor: json['changeBorderColor'] as String?,
  withdrawBackgroundColor: json['withdrawBackgroundColor'] as String?,
  withdrawTextColor: json['withdrawTextColor'] as String?,
  withdrawBorderColor: json['withdrawBorderColor'] as String?,
  detailsBackgroundColor: json['detailsBackgroundColor'] as String?,
);
