import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/pages/Home/Finals.dart';
import '../../../Model/FinalsModel/FinalsModel.dart';
import '../../../constant.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());

  static FinalsCubit get(context) => BlocProvider.of(context);
  Midterms_Model ?model;

  void lectures(){
    DioHelper.getData(url: examsEndPoint, token: TOKEN).then((value) {
      model = Midterms_Model.fromJson(value.data);
      print(model!.code);
      emit(FinalsData());

    });
  }


}



