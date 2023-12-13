import 'package:architecture_bloc/data/repository/authentication_repository.dart';
import 'package:architecture_bloc/data/service/authentication_service.dart';
import 'package:architecture_bloc/demo_bloc_observer.dart';
import 'package:architecture_bloc/logic/account_list_bloc.dart';
import 'package:architecture_bloc/presentation/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());

  /// Logger
  if (kDebugMode) {
    Bloc.observer = DemoBlocObserver();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Uri.https("reqres.in", "api/").toString(),
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(milliseconds: 15000),
        sendTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 40000),
      ),
    );
    final authRepo = AuthenticationRepository(AuthenticationService(dio));

    return BlocProvider(
      create: (context) => AccountListBloc(authRepo),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Architecture Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
