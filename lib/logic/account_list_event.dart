part of 'account_list_bloc.dart';

@immutable
abstract class AccountListEvent extends Equatable {
  const AccountListEvent();

  @override
  List<Object> get props => [];
}

class AccountListRequested extends AccountListEvent {
  final int pageNumber;

  const AccountListRequested(this.pageNumber);
}
