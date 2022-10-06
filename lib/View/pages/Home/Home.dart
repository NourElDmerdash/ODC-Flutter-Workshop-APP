import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/View/pages/Home/Note/Notes.dart';
import 'package:untitled4/View/pages/Home/Sections.dart';
import 'package:untitled4/ViewModel/bloc/Home/home_cubit.dart';
import 'package:untitled4/view/pages/Home/Events.dart';
import 'package:untitled4/view/pages/Home/Midterms.dart';
import '../../components/core/cardcomponent.dart';
import 'Finals.dart';
import 'Lectures.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: Colors.grey[100],
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Orange ',
                              style: GoogleFonts.poppins(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text(
                              'Digtal Center',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  child: Home_Card(
                                    'assets/lecture.svg', 'Lectures',),
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                         builder: (context) => Lectures()));
                                  },
                                ),
                                InkWell(child: Home_Card(
                                  'assets/midterm.svg', 'Midterms',),
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Midterms()));
                                  },),
                                InkWell(
                                  child: Home_Card('assets/event.svg', 'Events',
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => EventsScreen()));
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Home_Card(
                                    'assets/sections.svg', 'Sections',),
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                         builder: (context) => Sections()));
                                  },
                                ),
                                InkWell(child: Home_Card(
                                    'assets/final.svg', 'Finals'),
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                       builder: (context) => Finals()));
                                  },),
                                InkWell(child: Home_Card(
                                    'assets/notes.svg', 'Notes'),
                                  onTap: () {
                                     Navigator.push(context, MaterialPageRoute(
                                         builder: (context) => Notes()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // bottomNavigationBar: BottomNavigationBar(items: [
              //   BottomNavigationBarItem(
              //       icon: Icon(Icons.home),
              //     label : ("Home"),
              //   )
              // ]
              // ),
          // bottomNavigationBar: BottomNavigationBar(items: [
          // BottomNavigationBarItem(
          // icon: Icon(Icons.home),
          // label : ("Home"),
          // )
          // ]
          //   ),
          ),
          );
        },
      ),
    );
  }
}