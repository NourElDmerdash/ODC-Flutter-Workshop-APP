import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/Model/LecturesModel/LecturesModel.dart';
import 'package:untitled4/ViewModel/bloc/Lectures/lecture_cubit.dart';
import 'package:untitled4/ViewModel/database/network/dio_helper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());



}
