import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/top_content.dart';

class EnterEmail extends StatefulWidget {
  EnterEmail({Key? key}) : super(key: key);

  @override
  State<EnterEmail> createState() => _EnterEmailState();


}

late TextEditingController _emaileditingController;


class _EnterEmailState extends State<EnterEmail> {

  void initState() {
    super.initState();
    _emaileditingController = TextEditingController();
  }

  void dispose() {
    super.dispose();
    _emaileditingController.dispose();
  }

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
            title: 'Enter your email',
            subtitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                'Integer maximus accumsan erat id facilisis.',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller:_emaileditingController,
                  keyboardType: TextInputType.visiblePassword,

                  decoration: InputDecoration(

                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFF6F6F7),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Code was send your email',
                  style:
                  GoogleFonts.nunito(fontSize: 12, color: Color(0xFFACBAC3)),
                ),
                Text(
                  'Kylie_04@gmail.com',
                  style:
                  GoogleFonts.nunito(fontSize: 12, color: Color(0xFF126881)),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'This code will expire on',
                      style: GoogleFonts.nunito(
                          fontSize: 12, color: Color(0xFFACBAC3)),
                    ),
                    Text(
                      '5 minutes',
                      style: GoogleFonts.nunito(
                          fontSize: 12, color: Color(0xFF126881)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
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
                SizedBox(
                  height: 15,
                ),
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
