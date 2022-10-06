import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/ViewModel/database/network/end_points.dart';
import 'package:untitled4/constant.dart';

import '../../../Model/SectionsModel/SectionsModel.dart';
import '../../database/network/dio_helper.dart';

part 'Sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(context) => BlocProvider.of(context);
  SectionsModel ?model;

  void sections(){
    DioHelper.getData(url: sectionEndPoint, token: TOKEN).then((value) {
      model = SectionsModel.fromJson(value.data);
      print(model!.code);
      emit(SectionsData());

    });
  }


}

