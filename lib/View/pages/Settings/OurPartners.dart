import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/View/pages/Settings/OurPartners.dart';
import 'package:untitled4/View/pages/Settings/Settings.dart';

class OurPartners extends StatelessWidget {
  const OurPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Our Partners',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=> SettingsScreen()));
        }, icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.deepOrange,) ),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 10,
              child: Container(
                height: 250,
                width: 300,
                decoration: const BoxDecoration(
                  gradient:  LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0XFFBDBDBD),Color(0xFFFAFAFA), Color(0XFFBDBDBD)], ),
                ),
                child:
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ODC', style: GoogleFonts.poppins(
                            color: Colors.white,

                            fontSize: 25,),),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Center(
                          child: Expanded(
                            child: Text('Orange', style: GoogleFonts.poppins(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,),),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Digital Center', style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,),),
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                  ],

                ),
              ),
            ),
          )],

      ),
    );
  }
}