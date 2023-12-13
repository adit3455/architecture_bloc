import 'package:architecture_bloc/logic/account_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getAccountList();
    super.initState();
  }

  void getAccountList() {
    BlocProvider.of<AccountListBloc>(context)
        .add(const AccountListRequested(2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Demo"),
      ),
      body: BlocBuilder<AccountListBloc, AccountListState>(
        builder: (_, accountListState) {
          if (accountListState is AccountListReceived) {
            final accountList = accountListState.accountWrapper.accountList;
            if (accountList.isEmpty) {
              return const Center(
                child: Text("Empty Data"),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: ListView.builder(
                itemCount: accountList.length,
                itemBuilder: (_, index) {
                  return Text(
                    "${index + 1}. ${accountList[index].firstName} ${accountList[index].lastName}",
                  );
                },
              ),
            );
          }

          if (accountListState is AccountListError) {
            return Center(
              child: Row(
                children: [
                  Text(accountListState.exception.toString()),
                  ElevatedButton(
                    onPressed: () {
                      getAccountList();
                    },
                    child: const Text("Retry"),
                  ),
                ],
              ), //todo: bad error parsing
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
