import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int counterA = 0;
  int counterB = 0;
  void increment(String team, int num) {
    if (team == 'A') {
      counterA += num;
      emit(CounterAIncremented());
    } else {
      counterB += num;
      emit(CounterBIncremented());
    }
  }
}
