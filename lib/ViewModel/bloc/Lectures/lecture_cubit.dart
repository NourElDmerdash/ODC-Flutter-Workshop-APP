import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/ViewModel/database/network/end_points.dart';
import 'package:untitled4/constant.dart';

import '../../../Model/LecturesModel/LecturesModel.dart';
import '../../database/network/dio_helper.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit get(context) => BlocProvider.of(context);
  LecturesModel ?model;

  void lectures(){
    DioHelper.getData(url: lectureEndPoint, token: TOKEN).then((value) {
      model = LecturesModel.fromJson(value.data);
      print(model!.code);
      emit(LectureData());

    });
  }

}
