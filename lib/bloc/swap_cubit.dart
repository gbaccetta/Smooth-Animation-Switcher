import 'package:bloc/bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class SwapCubit extends Cubit<bool> {
  /// {@macro counter_cubit}
  SwapCubit() : super(true);

  /// Add 1 to the current state.
  void swap() => emit(!state);
}
