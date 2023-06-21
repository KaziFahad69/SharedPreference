import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/page/splashscreen.dart';

class HomePage2
 extends StatelessWidget {
  const HomePage2
  ({super.key});

  @override
  Widget build(BuildContext context) {
 
    // final Map<String, dynamic>? args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    // final String ?email = args?['email'];


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Text("name: $finalName"),
            Text("password: $finalPassword "),
            Text("Email: $email"),
      
            MaterialButton(
              child: Text("Remove"),
              color: Colors.yellow,
              textColor: Colors.black,
              disabledTextColor: Colors.green,
              onPressed: ()async{
              final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                 sharedPreferences.remove('name');
                 Navigator.pushNamed(context, '/loginpage');
            
            })
          ],
        ),
      ),
    );
  }
}