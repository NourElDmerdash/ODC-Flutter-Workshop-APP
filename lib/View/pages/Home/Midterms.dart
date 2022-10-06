import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/layout_screen.dart';
import 'package:untitled4/ViewModel/bloc/Lectures/lecture_cubit.dart';
import 'package:untitled4/ViewModel/bloc/Midterms/midterms_cubit.dart';

import '../../components/core/corecomponent.dart';

class Midterms extends StatelessWidget {
  const Midterms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => MidtermsCubit()..lectures(),
        child: BlocConsumer<MidtermsCubit, MidtermsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            MidtermsCubit myCubit = MidtermsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(onPressed: (){
                  Navigator.pop(context,MaterialPageRoute(builder:
                      (context)=>Layout()));
                },icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,)
                ) ,
                centerTitle: true,
                backgroundColor: Colors.deepOrange,
                title: Text("Midterms"),
              ),
              body: myCubit.model == null ? CircularProgressIndicator(): ListView.builder(
                itemBuilder: (context, index) {
                  return Default_Card(
                      myCubit.model!.data![index].examSubject.toString(),
                      myCubit.model!.data![index].examStartTime.toString(),
                      myCubit.model!.data![index].examEndTime.toString(),
                      myCubit.model!.data![index].examDate.toString());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
