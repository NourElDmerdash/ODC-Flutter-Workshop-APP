import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/ViewModel/counter_screen_cubit.dart';

class counterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterScreenCubit(),
      child: BlocConsumer<CounterScreenCubit, CounterScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          CounterScreenCubit mycub =CounterScreenCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter"),
            ),
            body: Column(
              children: [
                Center(
                  child: Row(
                    children: [
                      IconButton(onPressed: () {mycub.increase();}, icon: Icon(Icons.add),),
                      Text(mycub.count.toString()),
                      IconButton(onPressed: () {mycub.decrease();}, icon: Icon(Icons.remove),)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}