import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_model.freezed.dart';
part 'language_model.g.dart';

@freezed
class Language with _$Language {
  const factory Language({
    required String name,
    required String languageCode,
    required String countryCode,
    required String flag,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}
