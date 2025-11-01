part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterAIncremented extends CounterState {}

final class CounterBIncremented extends CounterState {}
