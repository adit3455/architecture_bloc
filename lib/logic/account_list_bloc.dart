import 'package:architecture_bloc/data/model/account_wrapper.dart';
import 'package:architecture_bloc/data/repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'account_list_event.dart';

part 'account_list_state.dart';

class AccountListBloc extends Bloc<AccountListEvent, AccountListState> {
  final AuthenticationRepository _authenticationRepository;

  AccountListBloc(this._authenticationRepository)
      : super(AccountListInitial()) {
    on<AccountListRequested>((event, emit) async {
      emit(AccountListLoading());
      await _authenticationRepository.getAccountList(event.pageNumber).then(
          (value) {
        emit(AccountListReceived(value));
      }, onError: (exception) {
        emit(AccountListError(exception));
      });
    });
  }
}
