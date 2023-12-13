import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoBlocObserver extends BlocObserver {
  final String tag = "bloc_obs";

  @override
  void onCreate(BlocBase bloc) {
    debugPrint( "${bloc.runtimeType} | onCreate: ${bloc.runtimeType}");
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    debugPrint("${bloc.runtimeType} | onEvent: $event");
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("${bloc.runtimeType} | onChange: $change");
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint("${bloc.runtimeType} | onTransition: $transition");
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint("${bloc.runtimeType} | onError: $stackTrace");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("${bloc.runtimeType} |  onClose: $bloc");
    super.onClose(bloc);
  }
}
