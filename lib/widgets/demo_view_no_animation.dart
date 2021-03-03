import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/swap_cubit.dart';

class DemoView extends StatelessWidget {
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
            return state
                ? Icon(Icons.face, size: 80) : Icon(Icons.face,size: 160,);
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
