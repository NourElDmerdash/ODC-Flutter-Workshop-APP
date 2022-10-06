import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/ViewModel/database/network/end_points.dart';

import '../../../Model/News/NewsModel.dart';
import '../../../constant.dart';
import '../../database/network/dio_helper.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);
  NewsModel ?model;

  void lectures(){
    DioHelper.getData(url: newsEndPoint, token: TOKEN).then((value) {
      model = NewsModel.fromJson(value.data);
      print(model!.code);
      emit(NewsData());

    });
  }

}



