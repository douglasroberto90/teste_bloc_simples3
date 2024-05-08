import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {}

final class CounterIncrementEvent extends CounterEvent {}
final class CounterDecrementEvent extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementEvent>(_onIncrement);
    on<CounterDecrementEvent>(_onDecrement);
  }

  Future<void> _onIncrement(CounterIncrementEvent event, Emitter<int> emit) async {
    emit(state + 1);
  }

  Future<void> _onDecrement(CounterDecrementEvent event, Emitter<int> emit) async {
    emit(state - 1);
  }


}