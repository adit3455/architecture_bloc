import 'package:architecture_bloc/data/model/account.dart';

class AccountWrapper {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Account> accountList;

  AccountWrapper(
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.accountList,
  );
}
