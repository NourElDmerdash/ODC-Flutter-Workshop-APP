import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/layout_screen.dart';
import 'package:untitled4/ViewModel/bloc/Sections/Sections_cubit.dart';

import '../../components/core/corecomponent.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => SectionsCubit()..sections(),
        child: BlocConsumer<SectionsCubit, SectionsState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            SectionsCubit myCubit = SectionsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(onPressed: (){
                  Navigator.pop(context,MaterialPageRoute(builder:
                      (context)=>Layout()));
                },icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,)
                ) ,
                centerTitle: true,
                backgroundColor: Colors.deepOrange,
                title: Text("Sections"),
              ),
              body: myCubit.model == null ? CircularProgressIndicator(): ListView.builder(
                itemBuilder: (context, index) {
                  return Default_Card(
                      myCubit.model!.data![index].sectionSubject.toString(),
                      myCubit.model!.data![index].sectionStartTime.toString(),
                      myCubit.model!.data![index].sectionEndTime.toString(),
                      myCubit.model!.data![index].sectionDate.toString());
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
