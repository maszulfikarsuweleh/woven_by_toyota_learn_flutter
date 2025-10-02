// ignore_for_file: depend_on_referenced_packages

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'setting_response.g.dart';

@JsonSerializable(createToJson: false)
class SettingResponse extends Equatable {
    SettingResponse({
        required this.widget,
    });

    final Widget? widget;

    factory SettingResponse.fromJson(Map<String, dynamic> json) => _$SettingResponseFromJson(json);

    @override
    List<Object?> get props => [
    widget, ];
}

@JsonSerializable(createToJson: false)
class Widget extends Equatable {
    Widget({
        required this.enabled,
        required this.position,
        required this.theme,
        required this.content,
    });

    final bool? enabled;
    final Position? position;
    final Theme? theme;
    final Content? content;

    factory Widget.fromJson(Map<String, dynamic> json) => _$WidgetFromJson(json);

    @override
    List<Object?> get props => [
    enabled, position, theme, content, ];
}

@JsonSerializable(createToJson: false)
class Content extends Equatable {
    Content({
        required this.cultures,
        required this.contentDefault,
        required this.autodetectLanguage,
    });

    final List<String>? cultures;
    final String? contentDefault;
    final bool? autodetectLanguage;

    factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

    @override
    List<Object?> get props => [
    cultures, contentDefault, autodetectLanguage, ];
}

@JsonSerializable(createToJson: false)
class Position extends Equatable {
    Position({
        required this.position,
        required this.distanceVerticalPx,
        required this.distanceHorizontalPx,
    });

    final String? position;
    final int? distanceVerticalPx;
    final int? distanceHorizontalPx;

    factory Position.fromJson(Map<String, dynamic> json) => _$PositionFromJson(json);

    @override
    List<Object?> get props => [
    position, distanceVerticalPx, distanceHorizontalPx, ];
}

@JsonSerializable(createToJson: false)
class Theme extends Equatable {
    Theme({
        required this.closed,
        required this.opened,
    });

    final Closed? closed;
    final Opened? opened;

    factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);

    @override
    List<Object?> get props => [
    closed, opened, ];
}

@JsonSerializable(createToJson: false)
class Closed extends Equatable {
    Closed({
        required this.backgroundColor,
        required this.foregroundColor,
    });

    final String? backgroundColor;
    final String? foregroundColor;

    factory Closed.fromJson(Map<String, dynamic> json) => _$ClosedFromJson(json);

    @override
    List<Object?> get props => [
    backgroundColor, foregroundColor, ];
}

@JsonSerializable(createToJson: false)
class Opened extends Equatable {
    Opened({
        required this.backgroundColor,
        required this.foregroundColor,
        required this.highlightColor,
        required this.shadeColor,
        required this.changeBackgroundColor,
        required this.changeTextColor,
        required this.changeBorderColor,
        required this.withdrawBackgroundColor,
        required this.withdrawTextColor,
        required this.withdrawBorderColor,
        required this.detailsBackgroundColor,
    });

    final String? backgroundColor;
    final String? foregroundColor;
    final String? highlightColor;
    final String? shadeColor;
    final String? changeBackgroundColor;
    final String? changeTextColor;
    final String? changeBorderColor;
    final String? withdrawBackgroundColor;
    final String? withdrawTextColor;
    final String? withdrawBorderColor;
    final String? detailsBackgroundColor;

    factory Opened.fromJson(Map<String, dynamic> json) => _$OpenedFromJson(json);

    @override
    List<Object?> get props => [
    backgroundColor, foregroundColor, highlightColor, shadeColor, changeBackgroundColor, changeTextColor, changeBorderColor, withdrawBackgroundColor, withdrawTextColor, withdrawBorderColor, detailsBackgroundColor, ];
}
