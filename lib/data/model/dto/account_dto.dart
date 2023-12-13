import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_dto.freezed.dart';

part 'account_dto.g.dart';

@freezed
class AccountDto with _$AccountDto {
  const AccountDto._();

  factory AccountDto({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "avatar")  String? avatar,
  }) = _AccountDto;

  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);
}