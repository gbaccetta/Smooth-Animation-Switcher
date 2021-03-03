import 'package:bloc/bloc.dart';

enum view { basic, switcher, smoothswitcher }

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class SwapViewCubit extends Cubit<view> {
  /// {@macro counter_cubit}
  SwapViewCubit() : super(view.basic);

  /// Add 1 to the current state.
  void basic() => emit(view.basic);
  void switcher() => emit(view.switcher);
  void smoothswitcher() => emit(view.smoothswitcher);
}
