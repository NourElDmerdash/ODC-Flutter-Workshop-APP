import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/Signup.dart';
import 'package:untitled4/ViewModel/bloc/Login/login_cubit.dart';


class LoginScreen extends StatelessWidget {

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit mycub = LoginCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text("Orange",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.0),
                                child: Text("Digital",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text("Center",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 20.0, bottom: 20.0, top: 50.0),
                        child: Text("Login",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,

                          ),),
                      ),
                      TextFormField(
                        controller: mycub.emaillogin,
                        cursorColor: Colors.grey,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'E-Mail',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusColor: Colors.orange,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.deepOrange),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.orange),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      TextFormField(
                        obscureText: true,
                        controller: mycub.passlogin,
                        cursorColor: Colors.grey,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          focusColor: Colors.orange[800],
                          suffixIcon: IconButton(
                              icon: Icon(
                                isPassword
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.orange,
                              ),
                              onPressed: null,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.orange),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Text("Forgot Password?",
                        style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 40.0,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.orange[900],
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder:
                            // (context)=> HomeScreen()));
                            mycub.login(context);
                          },
                          child: Text('Login',
                            style: TextStyle(fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Stack(
                        children:
                        [
                          Divider(
                            height: 30.0,
                            color: Colors.black,
                          ),
                          Positioned(
                            left: 140.0,
                            top: 2.0,
                            //bottom: 29.0,
                            child: Text('OR',
                              style: TextStyle(fontSize: 20.0,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child:
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen() ,));
                          },
                          child: Text('Sign Up',
                            style: TextStyle(fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[900]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }


}