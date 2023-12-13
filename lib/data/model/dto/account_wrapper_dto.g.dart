// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_wrapper_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountWrapperDtoImpl _$$AccountWrapperDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountWrapperDtoImpl(
      page: json['page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
      totalPages: json['total_pages'] as int?,
      accountListDto: (json['data'] as List<dynamic>?)
          ?.map((e) => AccountDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AccountWrapperDtoImplToJson(
        _$AccountWrapperDtoImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.accountListDto,
    };
