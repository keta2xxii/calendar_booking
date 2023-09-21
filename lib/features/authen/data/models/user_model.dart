import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String? phone,
    @Default('') String? avatarId,
    @Default('') String? createdAt,
    @Default('') String? token,
    @Default('') String? refreshToken,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
