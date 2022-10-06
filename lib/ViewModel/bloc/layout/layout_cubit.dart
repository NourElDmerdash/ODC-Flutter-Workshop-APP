import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/pages/Home/News.dart';
import 'package:untitled4/View/pages/Settings/Settings.dart';

import '../../../View/pages/Home/Home.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int counter = 1;
  int total = 0;

  List<Widget> pageList = [
    HomeScreen(),
    News_Screen(),
    SettingsScreen()
  ];


  void BottomTap(int index) {

    currentIndex = index;

    emit(AppChangeBottomNabBarState());
  }


}
