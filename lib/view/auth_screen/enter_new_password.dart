import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayaa_shop/view/widget/top_content.dart';

class EnterNewPassword extends StatefulWidget {
  const EnterNewPassword({Key? key}) : super(key: key);

  @override
  State<EnterNewPassword> createState() => _EnterNewPasswordState();
}

late TextEditingController _passwordeditingController;
late TextEditingController _confrimpasswordeditingController;
 bool _isobscore =true;

class _EnterNewPasswordState extends State<EnterNewPassword> {
  void initState() {
    super.initState();
    _passwordeditingController = TextEditingController();
    _confrimpasswordeditingController = TextEditingController();
  }

  void dispose() {
    _passwordeditingController.dispose();
    _confrimpasswordeditingController.dispose();
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
            title: 'Set a new password',
            subtitle:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                'Integer maximus accumsan erat id facilisis.',
          ),
          SizedBox(
            height: 30,
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _confrimpasswordeditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isobscore,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isobscore = !_isobscore;
                      });
                    },
                    icon: Icon(
                        _isobscore ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: 'Password',
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
                height: 10,
              ),
              TextField(
                controller: _confrimpasswordeditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isobscore,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isobscore = !_isobscore;
                      });
                    },
                    icon: Icon(
                        _isobscore ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: 'Confirm password',
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
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Save Password',
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
