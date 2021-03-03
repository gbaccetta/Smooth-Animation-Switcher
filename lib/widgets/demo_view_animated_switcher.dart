import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/swap_cubit.dart';

class DemoViewSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Push the button to swap Size:',
        ),
        SizedBox(height: 16),
        BlocBuilder<SwapCubit, bool>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: state
                  ? Icon(Icons.face, size: 80, key: Key("80"))
                  : Icon(Icons.face, size: 160, key: Key("160")),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
            );
          },
        ),
        SizedBox(height: 16),
        Text(
          'Demo by @GBACCETTA',
        ),
      ],
    );
  }
}
