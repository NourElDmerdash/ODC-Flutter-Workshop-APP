import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/pages/Settings/FAQ.dart';

import '../../../Model/FAQ/FaqModel.dart';
import '../../../constant.dart';
import '../../database/network/dio_helper.dart';
import '../../database/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());

  static FaqCubit get(context) => BlocProvider.of(context);

  FAQModel ?model;

  void lectures(){
    DioHelper.getData(url: faqEndPoint, token: TOKEN).then((value) {
      model = FAQModel.fromJson(value.data);
      print(model!.code);
      emit(FaqData());

    });
  }

}


