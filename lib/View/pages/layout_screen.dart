import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:untitled4/ViewModel/bloc/layout/layout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => LayoutCubit(),
        child: BlocConsumer<LayoutCubit, LayoutState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            LayoutCubit cubit = LayoutCubit.get(context);
            return Scaffold(
              body:cubit.pageList[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black38,
              currentIndex: cubit.currentIndex,
              onTap: cubit.BottomTap,
              type: BottomNavigationBarType.fixed,
              //fixedColor: Colors.red,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            ),
            );
          },
        ),
      ),
    );
  }
}
