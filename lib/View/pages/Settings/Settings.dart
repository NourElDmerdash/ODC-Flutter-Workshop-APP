import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/View/pages/Login.dart';
import 'package:untitled4/View/pages/Settings/FAQ.dart';
import 'package:untitled4/View/pages/Settings/OurPartners.dart';
import 'package:untitled4/View/pages/Settings/Support.dart';
import 'package:untitled4/View/pages/Settings/Terms_Conditions.dart';
class SettingsScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                Text("Settings",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                    color: Colors.black,

                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FAQ(),));
                  },
                  child: ListTile(
                    leading: Text("FAQ",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Terms_Conditions(),));
                  },
                  child: ListTile(
                    leading: Text("Terms & Conditions",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OurPartners(),));
                  },
                  child: ListTile(
                    leading: Text("Our Partenrs",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Support(),));
                  },
                  child: ListTile(
                    leading: Text("Support",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Divider(
                  height: 5.0,
                  color: Colors.black,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: ListTile(
                    leading: Text("Log out",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}