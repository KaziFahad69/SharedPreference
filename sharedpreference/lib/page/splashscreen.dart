import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


String ?finalName, finalPassword, email;
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running operation, such as fetching data or initializing the app
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home screen after the splash screen is displayed
      getValidationData().whenComplete(() async=> Navigator.pushNamed(context, finalName==null?'/loginpage':'/homepage2'));
    });
  }

Future getValidationData ()async{
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   var obtainname = sharedPreferences.getString('name');
   var obtainpassword = sharedPreferences.getString('password');
   var obtainemail = sharedPreferences.getString('email');
   setState(() {
    finalPassword = obtainpassword;
    email = obtainemail;
     finalName = obtainname;
   });
   print(finalName);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
              textColor: Colors.white,
            ),
            SizedBox(height: 16),
            Text(
              'My App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}