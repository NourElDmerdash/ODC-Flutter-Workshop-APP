import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/pages/Home/Midterms.dart';

import '../../../Model/FinalsModel/FinalsModel.dart';
import '../../../constant.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());

  static MidtermsCubit get(context) => BlocProvider.of(context);

  Midterms_Model ?model;

  void lectures(){
    DioHelper.getData(url: examsEndPoint, token: TOKEN).then((value) {
      model = Midterms_Model.fromJson(value.data);
      print(model!.code);
      emit(MidtermsData());

    });
  }

  sections() {}

}




