import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/swap_cubit.dart';
import 'bloc_observer.dart';
import 'bloc/swap_view_cubit.dart';
import 'widgets/home_page_view.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SwapCubit(),
        ),
        BlocProvider(
          create: (_) => SwapViewCubit(),
        ),
      ],
      child: HomePageView(),
    );
  }
}
