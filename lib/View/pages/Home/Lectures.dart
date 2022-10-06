import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/layout_screen.dart';
import 'package:untitled4/ViewModel/bloc/Lectures/lecture_cubit.dart';

import '../../components/core/corecomponent.dart';

class Lectures extends StatelessWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LectureCubit()..lectures(),
        child: BlocConsumer<LectureCubit, LectureState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LectureCubit myCubit = LectureCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(onPressed: (){
                  Navigator.pop(context,MaterialPageRoute(builder:
                  (context)=>Layout()));
                },icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,)
                ) ,
                centerTitle: true,
                backgroundColor: Colors.deepOrange,
                title: Text("Lectures"),
                ),
                body: myCubit.model == null ? CircularProgressIndicator(): ListView.builder(
                itemBuilder: (context, index) {
                  return Default_Card(
                      myCubit.model!.data![index].lectureSubject.toString(),
                      myCubit.model!.data![index].lectureStartTime.toString(),
                      myCubit.model!.data![index].lectureEndTime.toString(),
                      myCubit.model!.data![index].lectureDate.toString());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
