import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/layout_screen.dart';
import 'package:untitled4/ViewModel/bloc/Finals/finals_cubit.dart';


import '../../components/core/corecomponent.dart';

class Finals extends StatelessWidget {
  const Finals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => FinalsCubit()..lectures(),
        child: BlocConsumer<FinalsCubit, FinalsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            FinalsCubit myCubit = FinalsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(onPressed: (){
                  Navigator.pop(context,MaterialPageRoute(builder:
                      (context)=>Layout()));
                },icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,)
                ) ,
                centerTitle: true,
                backgroundColor: Colors.deepOrange,
                title: Text("Finals"),
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
