import 'package:eros_n/common/enum.dart';
import 'package:eros_n/network/enum.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(false) bool isCoverBlur,
    @Default(false) bool isTagTranslate,
    @Default(true) bool dynamicColor,
    @Default(SearchSort.recent) SearchSort searchSort,
    @Default(false) bool showTags,
    @Default(TagLayoutOnItem.wrap) TagLayoutOnItem tagLayoutOnItem,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(false) bool fullScreenReader,
    @Default(ReadModel.leftToRight) ReadModel readModel,
    @Default(ListModel.waterfall) ListModel listModel,
    @Default('') String localeCode,
    @Default('dynamic') String themeColorLabel,
  }) = _Settings;

  const Settings._();

  factory Settings.fromJson(Map<String, Object?> json) =>
      _$SettingsFromJson(json);

  @JsonKey(ignore: true)
  bool get readModelPageView =>
      readModel == ReadModel.leftToRight || readModel == ReadModel.rightToLeft;
}
