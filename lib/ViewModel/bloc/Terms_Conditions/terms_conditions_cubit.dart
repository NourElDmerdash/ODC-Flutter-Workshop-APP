import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../Model/TermsModel/TermsModel.dart';
import '../../../constant.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'terms_conditions_state.dart';

class TermsConditionsCubit extends Cubit<TermsConditionsState> {
  TermsConditionsCubit() : super(TermsConditionsInitial());

  static TermsConditionsCubit get(context) => BlocProvider.of(context);

  TermsModel ?model;

  void getData(){
    DioHelper.getData(url: termsEndPoint, token: TOKEN).then((value) {
      model = TermsModel.fromJson(value.data);
      print(model!.code);
      emit(TermsData());

    });
  }


}

