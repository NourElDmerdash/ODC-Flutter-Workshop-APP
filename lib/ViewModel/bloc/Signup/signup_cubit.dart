import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/Model/GradeModel/grade_Model.dart';
import 'package:untitled4/ViewModel/database/network/dio_helper.dart';
import 'package:untitled4/ViewModel/database/network/end_points.dart';

import '../../../Model/UniversityModel/UniversityModel.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  get grade_model => null;

  get ispressed1 => null;

  get ispressed2 => null;

  get currentgrade => null;

  get currentUni => null;

  static SignupCubit get(context) => BlocProvider.of(context);
  TextEditingController emailsignup = TextEditingController();
  TextEditingController passsignup1 = TextEditingController();
  TextEditingController passsignup2 = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  UniversityModel ? uniModel;

  //todo add uni model
  //todo add grade model

  void getUniData() {
    DioHelper.getData(url: universityEndPoint).then((value) {
      uniModel = UniversityModel.fromJson(value.data);
    });

    }


    void SignUp(context) {
      var user =
      {

        "email": emailsignup.text,
        "password": passsignup1.text,
        "password": passsignup2.text,
        "name": name.text,
        "gender": "f",
        "gradeId": 4,
        "universityId": 1,
        "phoneNumber": phonenumber.text,

      };
    }

    selectGradeItem(Object? value) {}

    void showPassword1() {}

    void showPassword2() {}

    selectUniItem(Object? value) {}
  }
