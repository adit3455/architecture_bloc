import 'package:architecture_bloc/data/model/account.dart';
import 'package:architecture_bloc/data/model/account_wrapper.dart';
import 'package:architecture_bloc/data/model/dto/account_wrapper_dto.dart';
import 'package:architecture_bloc/data/service/authentication_service.dart';
import 'package:dio/dio.dart';

class AuthenticationRepository {
  final AuthenticationService _authenticationService;

  AuthenticationRepository(this._authenticationService);

  Future<AccountWrapper> getAccountList(int pageNumber) async {
    try {
      final Response response =
          await _authenticationService.getAccountList(pageNumber);

      final accountWrapperDto = AccountWrapperDto.fromJson(response.data);
      final accountList = accountWrapperDto.accountListDto?.map((accountDto) {
            return Account(
              accountDto.id ?? 0,
              accountDto.email ?? "",
              accountDto.firstName ?? "",
              accountDto.lastName ?? "",
              accountDto.avatar ?? "",
            );
          }).toList() ??
          [];

      return AccountWrapper(
        accountWrapperDto.page ?? 0,
        accountWrapperDto.perPage ?? 0,
        accountWrapperDto.total ?? 0,
        accountWrapperDto.totalPages ?? 0,
        accountList,
      );
    } catch (error) {
      //todo: extract error here
      rethrow;
    }
  }
}
