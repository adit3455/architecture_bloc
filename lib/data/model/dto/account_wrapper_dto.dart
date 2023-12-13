import 'package:architecture_bloc/data/model/dto/account_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_wrapper_dto.freezed.dart';

part 'account_wrapper_dto.g.dart';

@freezed
class AccountWrapperDto with _$AccountWrapperDto {
  const AccountWrapperDto._();

  factory AccountWrapperDto({
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "total_pages") int? totalPages,
    @JsonKey(name: "data") List<AccountDto>? accountListDto,
  }) = _AccountWrapperDto;

  factory AccountWrapperDto.fromJson(Map<String, dynamic> json) =>
      _$AccountWrapperDtoFromJson(json);
}
