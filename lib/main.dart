import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goog_architecture/injection.dart';

import 'bloc_app.dart';
import 'get_app.dart';


void main() {

  configureDependencies();

  // BlocOverrides.runZoned(
  //   () => runApp(const BApp()),
  //   blocObserver: AppBlocObserver(),
  // );

   runApp(const GetApp());


}