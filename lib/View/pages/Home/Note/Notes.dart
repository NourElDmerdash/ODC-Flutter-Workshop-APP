import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home.dart';
import 'AddNote.dart';


class Notes extends StatelessWidget {
  const Notes ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,

        title: Text('Notes', style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,



        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> HomeScreen()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.grey,) ),

      ),
      body: SafeArea(

        child: Center(
          child: Column(
            children: [

              SizedBox(
                height: 300,
              ),
              Text('There is No Data To Show', style: GoogleFonts.poppins(
                color: Colors.black,

                fontSize: 20,



              ),)

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.black,),
          backgroundColor: Colors.blueGrey[200],
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddNotes()));
          }
      ),
    );
  }
}