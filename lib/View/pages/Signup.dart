import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled4/Model/UniversityModel/UniversityModel.dart';
import 'package:untitled4/ViewModel/bloc/Signup/signup_cubit.dart';
import 'package:untitled4/view/pages/login.dart';



class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => SignUp_ScreenState();
}

class SignUp_ScreenState extends State<SignUpScreen> {
  int selectedValue = 1;
  String dropdownvalue = 'Item 1';
  var items = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SignupCubit myCubit = SignupCubit.get(context);

          return Scaffold(
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Orange ',
                              style: GoogleFonts.poppins(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text(
                              'Digtal Center',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: myCubit.name,
                      decoration:  InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Name',
                          labelStyle: GoogleFonts.poppins(
                              color: Colors.grey[700]
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange

                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: myCubit.emailsignup,
                      decoration:  InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'E-Mail',
                          labelStyle: GoogleFonts.poppins(
                              color: Colors.grey[700]
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange

                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: BlocConsumer<SignupCubit, SignupState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      builder: (context, state) {
                        SignupCubit passobj1 = SignupCubit.get(context);
                        return TextFormField(
                          obscureText: passobj1.ispressed1,
                          controller: myCubit.passsignup1,
                          decoration:  InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              labelText: 'Password',
                              suffixIcon:IconButton(
                                onPressed: (){
                                  passobj1.showPassword1();
                                }, icon: Icon(passobj1.ispressed1
                                  ? Icons.remove_red_eye
                                  :Icons.visibility_off, color: Colors.deepOrange,),),
                              labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey[700]
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange

                                  )
                              )
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: BlocConsumer<SignupCubit, SignupState>(
                      listener: (context, state) {
                        // TODO: implement listener
                      },
                      builder: (context, state) {
                        SignupCubit passobj2 = SignupCubit.get(context);
                        return TextFormField(
                          obscureText: passobj2.ispressed2,
                          controller: myCubit.passsignup2,
                          decoration:  InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              labelText: 'Password',
                              suffixIcon:IconButton(
                                onPressed: (){
                                  passobj2.showPassword2();
                                }, icon: Icon(passobj2.ispressed2
                                  ? Icons.remove_red_eye
                                  :Icons.visibility_off, color: Colors.deepOrange,),),
                              labelStyle: GoogleFonts.poppins(
                                  color: Colors.grey[700]
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange

                                  )
                              )
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: myCubit.phonenumber,
                      decoration:  InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Phone Number',
                          labelStyle: GoogleFonts.poppins(
                              color: Colors.grey[700]
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange

                              )
                          )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 80 , top: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text('Gender',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20
                                ),),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10
                                      ),
                                      border: Border.all(
                                        color: Colors.orange/**/,
                                        width: 1,
                                      )

                                  ),
                                  child: DropdownButton(

                                    // Initial Value
                                    value: dropdownvalue,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, left: 30 , top: 10),
                        child: Column(
                          children: [
                            Text('University',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),),


                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10
                                  ),
                                  border: Border.all(
                                    color: Colors.orange/**/,
                                    width: 1,
                                  )

                              ),

                              child: Text(""),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30 , top: 10),
                      child: Column(
                        children: [
                          Text('Grade',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),


                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10
                                ),
                                border: Border.all(
                                  color: Colors.orange/**/,
                                  width: 1,
                                )

                            ),

                            child: myCubit.grade_model ==null
                                ? CircularProgressIndicator()
                                :DropdownButton(
                              value: myCubit.currentgrade,
                              icon:
                              const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                              ),
                              onChanged: (value) => myCubit.selectGradeItem(value),
                              items: myCubit.grade_model!.data!.map<DropdownMenuItem>((value)
                              {
                                return DropdownMenuItem(value: value.grade,
                                  child: Text(value.grade!),);
                              }).toList(),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: ElevatedButton(onPressed: (){

                      myCubit.SignUp(context);

                    },
                      child:
                      Text('Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20 ,
                            fontWeight: FontWeight.bold
                        ),) , style: ElevatedButton.styleFrom(
                          fixedSize: Size(370, 50),
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 1,
                          indent: 20,
                          endIndent: 10,
                        ),
                      ),
                      Text('OR',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),),
                      Expanded(
                        child: Divider(
                          color: Colors.grey, //color of divider
                          height: 20, //height spacing of divider
                          thickness: 1, //thickness of divier line
                          indent: 20, //spacing at the start of divider
                          endIndent: 10, //spacing at the end of divider
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    }, child:
                    Text('Login',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 20 ,
                          fontWeight: FontWeight.bold
                      ),) , style: ElevatedButton.styleFrom(
                        fixedSize: Size(370, 50),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.deepOrange,
                                width: 2.5)
                        )

                    ),),

                  ),

                ]),
              ));
        },
      ),
    );
  }
}

class GetAllData {
}

