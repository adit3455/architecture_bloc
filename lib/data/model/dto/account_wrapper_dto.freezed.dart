// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_wrapper_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountWrapperDto _$AccountWrapperDtoFromJson(Map<String, dynamic> json) {
  return _AccountWrapperDto.fromJson(json);
}

/// @nodoc
mixin _$AccountWrapperDto {
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<AccountDto>? get accountListDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountWrapperDtoCopyWith<AccountWrapperDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWrapperDtoCopyWith<$Res> {
  factory $AccountWrapperDtoCopyWith(
          AccountWrapperDto value, $Res Function(AccountWrapperDto) then) =
      _$AccountWrapperDtoCopyWithImpl<$Res, AccountWrapperDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "data") List<AccountDto>? accountListDto});
}

/// @nodoc
class _$AccountWrapperDtoCopyWithImpl<$Res, $Val extends AccountWrapperDto>
    implements $AccountWrapperDtoCopyWith<$Res> {
  _$AccountWrapperDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? accountListDto = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      accountListDto: freezed == accountListDto
          ? _value.accountListDto
          : accountListDto // ignore: cast_nullable_to_non_nullable
              as List<AccountDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountWrapperDtoImplCopyWith<$Res>
    implements $AccountWrapperDtoCopyWith<$Res> {
  factory _$$AccountWrapperDtoImplCopyWith(_$AccountWrapperDtoImpl value,
          $Res Function(_$AccountWrapperDtoImpl) then) =
      __$$AccountWrapperDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "total") int? total,
      @JsonKey(name: "total_pages") int? totalPages,
      @JsonKey(name: "data") List<AccountDto>? accountListDto});
}

/// @nodoc
class __$$AccountWrapperDtoImplCopyWithImpl<$Res>
    extends _$AccountWrapperDtoCopyWithImpl<$Res, _$AccountWrapperDtoImpl>
    implements _$$AccountWrapperDtoImplCopyWith<$Res> {
  __$$AccountWrapperDtoImplCopyWithImpl(_$AccountWrapperDtoImpl _value,
      $Res Function(_$AccountWrapperDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? accountListDto = freezed,
  }) {
    return _then(_$AccountWrapperDtoImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      accountListDto: freezed == accountListDto
          ? _value._accountListDto
          : accountListDto // ignore: cast_nullable_to_non_nullable
              as List<AccountDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountWrapperDtoImpl extends _AccountWrapperDto {
  _$AccountWrapperDtoImpl(
      {@JsonKey(name: "page") this.page,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "total") this.total,
      @JsonKey(name: "total_pages") this.totalPages,
      @JsonKey(name: "data") final List<AccountDto>? accountListDto})
      : _accountListDto = accountListDto,
        super._();

  factory _$AccountWrapperDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountWrapperDtoImplFromJson(json);

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "total")
  final int? total;
  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;
  final List<AccountDto>? _accountListDto;
  @override
  @JsonKey(name: "data")
  List<AccountDto>? get accountListDto {
    final value = _accountListDto;
    if (value == null) return null;
    if (_accountListDto is EqualUnmodifiableListView) return _accountListDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AccountWrapperDto(page: $page, perPage: $perPage, total: $total, totalPages: $totalPages, accountListDto: $accountListDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountWrapperDtoImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            const DeepCollectionEquality()
                .equals(other._accountListDto, _accountListDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, total, totalPages,
      const DeepCollectionEquality().hash(_accountListDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountWrapperDtoImplCopyWith<_$AccountWrapperDtoImpl> get copyWith =>
      __$$AccountWrapperDtoImplCopyWithImpl<_$AccountWrapperDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountWrapperDtoImplToJson(
      this,
    );
  }
}

abstract class _AccountWrapperDto extends AccountWrapperDto {
  factory _AccountWrapperDto(
          {@JsonKey(name: "page") final int? page,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "total") final int? total,
          @JsonKey(name: "total_pages") final int? totalPages,
          @JsonKey(name: "data") final List<AccountDto>? accountListDto}) =
      _$AccountWrapperDtoImpl;
  _AccountWrapperDto._() : super._();

  factory _AccountWrapperDto.fromJson(Map<String, dynamic> json) =
      _$AccountWrapperDtoImpl.fromJson;

  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;
  @override
  @JsonKey(name: "data")
  List<AccountDto>? get accountListDto;
  @override
  @JsonKey(ignore: true)
  _$$AccountWrapperDtoImplCopyWith<_$AccountWrapperDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
