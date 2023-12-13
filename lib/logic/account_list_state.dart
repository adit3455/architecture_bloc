part of 'account_list_bloc.dart';

@immutable
abstract class AccountListState {}

class AccountListInitial extends AccountListState {}

class AccountListLoading extends AccountListState {
  AccountListLoading();
}

class AccountListReceived extends AccountListState {
  final AccountWrapper accountWrapper;

  AccountListReceived(this.accountWrapper);
}

class AccountListError extends AccountListState {
  final dynamic exception; //FIXME: bad error handling

  AccountListError(this.exception);
}
