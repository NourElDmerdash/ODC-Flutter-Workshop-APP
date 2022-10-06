part of 'counter_screen_cubit.dart';

@immutable
abstract class CounterScreenState {}

class CounterScreenInitial extends CounterScreenState {}
class CounterPlus extends CounterScreenState{}
class CounterMinus extends CounterScreenState{}