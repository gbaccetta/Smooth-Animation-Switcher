import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/swap_cubit.dart';
import '../bloc/swap_view_cubit.dart';
import 'widgets.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smooth AnimatedSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('BASIC'),
              onPressed: context.read<SwapViewCubit>().basic,
            ),
            RaisedButton(
              child: Text('SWITCHER'),
              onPressed: context.read<SwapViewCubit>().switcher,
            ),
            RaisedButton(
              child: Text('SMOOTH SWITCHER'),
              onPressed: context.read<SwapViewCubit>().smoothswitcher,
            ),
            SizedBox(height: 30),
            BlocBuilder<SwapViewCubit, view>(
              builder: (context, state) {
                switch (state) {
                  case view.basic:
                    return DemoView();
                  case view.switcher:
                    return DemoViewSwitcher();
                  case view.smoothswitcher:
                    return DemoViewSmoothSwithcer();
                  default:
                    return Container();
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<SwapCubit>().swap,
        tooltip: 'Toggle Visibility',
        child: Icon(Icons.swap_horiz),
      ),
    );
  }
}
