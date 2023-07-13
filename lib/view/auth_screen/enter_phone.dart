import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/view/widget/top_content.dart';

class EnterPhone extends StatefulWidget {
  const EnterPhone({Key? key}) : super(key: key);

  @override
  State<EnterPhone> createState() => _EnterPhoneState();
}

late TextEditingController _phonetextEditingControllerl;
bool _isobscore = true;

class _EnterPhoneState extends State<EnterPhone> {
  void initState() {
    super.initState();
    _phonetextEditingControllerl = TextEditingController();
  }

  void dispose() {
    _phonetextEditingControllerl.dispose();
    super.dispose();
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
            title: 'Enter your phone',
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
              TextField(
                controller: _phonetextEditingControllerl,
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isobscore,
                decoration: InputDecoration(

                  hintText: 'Phone Number',
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
                height: 70,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Save Phone Number',
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
            ],
          ),
        )
        ],
      ),
    );
  }
}
