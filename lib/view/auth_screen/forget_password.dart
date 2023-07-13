import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/view/widget/top_content.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7BCFE9),
      ),
      body: ListView(
        children: [
          TopContent(
            title: 'Forgot password',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                'Integer maximus accumsan erat id facilisis.',
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [],),
                SizedBox(
                  height: 30,
                ),
                Text('Code was send your email',style: GoogleFonts.nunito(fontSize: 12,color: Color(0xFFACBAC3)),),
                Text('Kylie_04@gmail.com',style: GoogleFonts.nunito(fontSize: 12,color: Color(0xFF126881)),),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  Text('This code will expire on',style: GoogleFonts.nunito(fontSize: 12,color: Color(0xFFACBAC3)),),
                  Text('5 minutes',style: GoogleFonts.nunito(fontSize: 12,color: Color(0xFF126881)),),
                ],),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('VERIFY CODE',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 62),
                      primary: Color(0xFF126881),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('RESEND CODE',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 62),
                      primary: Color(0xFFACBAC3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
