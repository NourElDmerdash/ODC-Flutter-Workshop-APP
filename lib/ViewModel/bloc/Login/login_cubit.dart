import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/ViewModel/database/network/dio_helper.dart';
import 'package:untitled4/ViewModel/database/network/end_points.dart';

import '../../../Model/LoginModel/Log_model.dart';
import '../../../View/pages/layout_screen.dart';
import '../../../constant.dart';

part 'login_state.dart';

class LoginCubit extends Cubit <LoginState> {
  LoginCubit() :super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  TextEditingController emaillogin = TextEditingController();
  TextEditingController passlogin = TextEditingController();
  LoginModel? model ;

  void login(context) {
    var json = {
      "email": emaillogin.text.toString(),
      "password": passlogin.text.toString()
    };
    print(emaillogin.text.toString());
    print(passlogin.text.toString());
    DioHelper.postData(url: loginEndPoint, data: json).then((value){
      if (value.statusCode == 200){
      model = LoginModel.fromJson(value.data);
      TOKEN = model!.data!.accessToken.toString();
      if (TOKEN != "" || TOKEN.isNotEmpty || TOKEN !=null) {
       Navigator.push(context, MaterialPageRoute(builder: (context)=> Layout(),));
      }
      }
     // print(value.data);
    }).catchError((e){
      print(e);
    }
    );
    }
  }
