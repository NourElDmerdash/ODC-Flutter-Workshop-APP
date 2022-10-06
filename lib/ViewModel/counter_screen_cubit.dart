import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/counterScreen.dart';

part 'counter_screen_state.dart';

class CounterScreenCubit extends Cubit<CounterScreenState> {
  CounterScreenCubit() : super(CounterScreenInitial());


  static CounterScreenCubit get(context) => BlocProvider.of(context);
  int count =0;

  void increase ()
  {
    count++;
    emit(CounterPlus());
  }

  void decrease ()
  {
    count--;
    emit(CounterMinus());
  }

}
