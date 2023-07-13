import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/controller/shared_pref/shared_pref.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      bool loggedIn = SharedPrefController().getValueFor<bool>(key: PrefKeys.loggedIn.name) ?? false;
      String route = loggedIn ? '/home_screen' : '/log_in';
      Navigator.pushReplacementNamed(context, route);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.deepOrangeAccent,
              Colors.redAccent,
            ])),
        alignment: AlignmentDirectional.center,
        child: Center(
          child: Text(
            'Sara Store',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
